require 'rails_helper'

describe User do
   let!(:user) { User.create!(name: "Ikuko", username: "Ikko", email: "ikko@ikko.com", password: "schoeller")}
  
  let!(:category) { Category.create!(name: "Meat, Poultry, & Fish") }
  
  let!(:item) { Item.create!(category: category, name: "Ground Beef, 1 lb.", description: "Grass Fed Ground Beef 85% Lean, 15\% Fat", image_url: "https://i1.wp.com/foodpoisoningbulletin.com/wp-content/uploads/Raw-Ground-Beef.jpg?resize=350\%2C200&ssl=1", tags: "ground beef hamburger burger") }

  let!(:user_item) { UserItem.create!(user_id: user.id, item_id: item.id) }

  describe "results" do
    context "after user selected all the items (s)he wants" do
      it "returns the total price, missing items, found items count, shopping items number" do
       
      end
    end
  end
end