class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_items
  has_many :items, through: :user_items


  def results
    user_items = self.items
    results = {}

    Store.all.each do |store|
      results[store.name] = {total_price: store.users_total_price(user_items), not_found_names: store.find_users_missing_items(user_items), not_found_count: store.find_users_missing_items(user_items).count, found_items_count: store.users_items_found_count(user_items), user_list_count: user_items.count,closest_store: store.closest_store_from_user_location}
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


end
