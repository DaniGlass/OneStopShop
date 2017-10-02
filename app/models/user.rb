class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_items
  has_many :items, through: :user_items
  
  validates_uniqueness_of :user_name, scope: :item_id, message: "Cannot add same item more than once." 

  def find_stores
    # check all stores to see if they carry all the list
    Store.all.select do |store|
      store.has_all_of_users_list?(self.items)
    end
  end

  def get_prices_from_stores
    stores_where_list_is_available = self.find_stores

    store_prices = {}

    stores_where_list_is_available.each do |store|
      store_prices[store.name] = StorePrice.where(item: self.items, store: store).pluck(:price).reduce(:+)
    end

    store_prices
  end

  def results
    self.get_prices_from_stores.sort_by { |store_name, total_price_per_store| total_price_per_store }[0..2]
  end
end
