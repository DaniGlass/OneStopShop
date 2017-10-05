class Item < ApplicationRecord
  has_many   :user_items
  belongs_to :category
  has_many   :store_prices
  has_many   :stores, through: :store_prices

end


