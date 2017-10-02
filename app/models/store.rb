class Store < ApplicationRecord
  has_many :store_prices
  has_many :items, through: :store_prices

  def find_users_missing_items(user_list)
    user_list.pluck(:name) - self.items.pluck(:name)
  end

  def users_total_price(user_list)
    StorePrice.where(item: user_list, store: self).pluck(:price).reduce(:+)
  end

  def items_to_user_items(user_list)
    missing_items = find_users_missing_items(user_list)

    total_price = users_total_price(user_list)

    {self.name => {total_price: total_price, not_found_names: missing_items, not_found_count: missing_items.count} }

  end

end
