class User < ApplicationRecord

  attr_accessor :remember_token, :reset_token

  has_many :user_items
  has_many :items, through: :user_items

  has_secure_password

  before_save   :downcase_email
  before_create :generate_access_token

  # validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 },format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 6 }, allow_nil: true

  def results
    user_items = self.items
    results = {}

    Store.all.each do |store|
      results[store.name] = {store_img_url: store.get_store_img_url, total_price: store.users_total_price(user_items), not_found_names: store.find_users_missing_items(user_items), not_found_count: store.find_users_missing_items(user_items).count, found_items_count: store.users_items_found_count(user_items), user_list_count: user_items.count,closest_store: store.closest_store_from_user_location}
    end
    results
  end

  def results_by_shortest_distance
    self.results.sort_by do |store, details|
      details[:closest_store]["distance"]
    end
  end

  def results_by_lowest_price
    self.results.sort_by do |store, details|
      details[:total_price].to_f
    end
  end

  def results_by_items_found
    self.results.sort_by do |store, details|
      details[:not_found_count]
    end
  end



  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
    BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(attribute, token)
    digest = self.send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end

  # Sets the password reset attributes.
  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest,  User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  # Sends password reset email.
  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

  # Returns true if a password reset has expired.
  def password_reset_expired?
    reset_sent_at < 2.hours.ago
  end

  private
    # Converts email to all lower-case.
    def downcase_email
      self.email = email.downcase
    end

    def generate_access_token
      begin
        self.access_token = User.new_token
      end while self.class.exists?(access_token: access_token)
    end
end


