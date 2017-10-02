class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_items
  has_many :items, through: :user_items

  def find_stores
    # check all stores to see if they carry all the list
    stores = Store.all.select do |store|
      store.has_all_of_users_list?(self.items)
    end


  end

end

# for new push you can delete this later