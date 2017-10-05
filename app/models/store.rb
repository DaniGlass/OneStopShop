class Store < ApplicationRecord
  has_many :store_prices
  has_many :items, through: :store_prices

  def find_users_missing_items(user_list)
    user_list.pluck(:name) - self.items.pluck(:name)
  end

  def users_items_found_count(user_list)
    user_list.count - self.find_users_missing_items(user_list).count
  end

  def users_total_price(user_list)
    '%.2f' % (StorePrice.where(item: user_list, store: self).pluck(:price).reduce(:+).round(2))
  end

  def get_store_img_url
    case self.name
    when "Target"
      return "https://abullseyeview.s3.amazonaws.com/wp-content/uploads/2014/04/targetlogo-6.jpeg"
    when "Walgreens"
      return "https://lh5.googleusercontent.com/proxy/zd8_yOpOSnGbH2oxbeaxpHv3uNm20pPPwofNEQPNAhdUjZkxj5cWwPVWYxxD3hQ2H5zTETdC8pxxr_VFHF1Wpm5M8t5v1OMQldI"
    when "Safeway"
      return "https://pbs.twimg.com/profile_images/813782141259497472/inQrmCRf.jpg"
    when "Whole Foods"
      return "https://d2lnr5mha7bycj.cloudfront.net/warehouse/logo/3/d209c632-75c1-4f4e-a678-b23d3d0d6810.png"
    when "Walmart"
      return "https://www.visitsouthwalton.com/sites/default/master/files/profiles/photos/profile_logo/walmart-logo0.jpg"
    when "CVS/Pharmacy"
      return "https://michaelfegerparalysisfoundation.org/wp-content/media/logo-cvs-pharmacy.gif"
    end
  end

  def closest_store_from_user_location
    store = YelpAdapter.search(self.name)["businesses"].sort_by { |rest| rest["distance"] }



    if self.name == "Target"
      store.delete_if { |s| s["name"] != "Target" }
    end

    store.first
  end

end
