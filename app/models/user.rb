class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_items
  has_many :items, through: :user_items


  def results
    results = {}

    Store.all.each do |store|
      results[store.name] = {total_price: store.users_total_price(self.items), not_found_names: store.find_users_missing_items(self.items), not_found_count: store.find_users_missing_items(self.items).count, closest_store: store.closest_store_from_user_location}
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
      details[:total_price]
    end
  end

end
