class Store < ApplicationRecord
  has_many :store_prices
  has_many :items, through: :store_prices
end
