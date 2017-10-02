class Store < ApplicationRecord
  has_many :store_prices
  has_many :items, through: :store_prices

  def has_all_of_users_list?(list)
    (self.items.pluck(:name) - list.pluck(:name)).count == (self.items.count - list.count)
  end

end
