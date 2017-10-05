require 'rails_helper'

describe "Store" do

   let(:user) { User.create(name: "Ikuko", username: "Ikko", email: "ikko@ikko.com", password: "schoeller")}
  
  let(:category1) { Category.create(name: "Meat, Poultry, & Fish") }
  let(:category2) { Category.create(name: "Produce") }
  let(:store1) { Store.create(name: "Safeway") }
  let(:store2) { Store.create(name: "Walgreens") }
  
  let(:item1) { Item.create(category: category1, name: "Ground Beef, 1 lb.", description: "Grass Fed Ground Beef 85% Lean, 15\% Fat", image_url: "https://i1.wp.com/foodpoisoningbulletin.com/wp-content/uploads/Raw-Ground-Beef.jpg?resize=350\%2C200&ssl=1", tags: "ground beef hamburger burger") }

  let(:item2) { Item.create(category: category2, name: "Avocado", brand: "Hass", description: "Loved for their creamy texture and heart-healthy unsaturated fat, versatile avocados can be added to almost everything.", image_url: "https://d2d8wwwkmhfcva.cloudfront.net/155x/filters:fill(FFF,true):format(jpg)/d2lnr5mha7bycj.cloudfront.net/product-image/file/large_bcb00e2e-0373-4aa5-acef-515e35726278.jpg", tags: "avocado ") }

  let(:item3) { Item.create(category: category2, name: "Broccoli Crown", brand: "Produce", description: "Broccoli contains many vitamins, including vitamin C and vitamin A.", image_url: "https://d2d8wwwkmhfcva.cloudfront.net/600x/filters:fill(FFF,true):format(jpg)/d2lnr5mha7bycj.cloudfront.net/product-image/file/large_42d7673d-8670-469d-8a32-0fc5760e1a7f.jpg", tags: "broccoli brocoli crown ") }

  let(:user_item1) { UserItem.create(user_id: user.id, item_id: item1.id) }

  let(:user_item2) { UserItem.create(user_id: user.id, item_id: item2.id) }


  let(:user_item3) { UserItem.create(user_id: user.id, item_id: item3.id) }

 
  describe "find_users_missing_items" do
    context "when use could not find item(s)" do
      
    let(:store_prices1) { item1.store_prices.create(store_id: store1.id, price: 1.99) }

    let(:store_prices2) { item2.store_prices.create(store_id: store1.id, price: 7.50) }

    let(:store_prices3) { item3.store_prices.create(store_id: store2.id, price: 7.50) }

      it "returns the names of the missing items" do         
        expect(store1.find_users_missing_items (user_item3.user.items)).to eq [user_item3.item.name]
      end
    end

    context "when use could not find any items" do
    
    let(:store_prices1) { item1.store_prices.create(store_id: store1.id, price: 1.99) }

    let(:store_prices2) { item2.store_prices.create(store_id: store1.id, price: 7.50) }

    let(:store_prices3) { item3.store_prices.create(store_id: store1.id, price: 7.50) }         
      
      it "returns an empty array" do
        expect(store2.find_users_missing_items (user.items)).to eq []
      end
    end
  end
  
  describe "users_items_found_count" do
    context "when use find some itmes" do
      
    let(:store_prices1) { item1.store_prices.create(store_id: store1.id, price: 1.99) }

    let(:store_prices2) { item2.store_prices.create(store_id: store1.id, price: 7.50) }

    let(:store_prices3) { item3.store_prices.create(store_id: store2.id, price: 7.50) }

      it "returns the number of the itmes" do
        user_item1
        user_item2
        user_item3
        store_prices1
        store_prices2
        store_prices3
              
        expect(store1.users_items_found_count (store1.items)).to eq 2
      end
    end

    context "when use could not find any items" do
    
    let(:store_prices1) { item1.store_prices.create(store_id: store1.id, price: 1.99) }

    let(:store_prices2) { item2.store_prices.create(store_id: store1.id, price: 7.50) }

    let(:store_prices3) { item3.store_prices.create(store_id: store1.id, price: 7.50) }         
      
      it "returns an empty array" do
        expect(store2.users_items_found_count (user.items)).to eq 0
      end
    end
  end

  describe "users_total_price" do
    
      
  let(:store_prices1) { item1.store_prices.create(store_id: store2.id, price: 1.99) }

  let(:store_prices2) { item2.store_prices.create(store_id: store1.id, price: 7.50) }

  let(:store_prices3) { item3.store_prices.create(store_id: store1.id, price: 7.50) }

    it "returns the number of the itmes user found" do
      user_item1
      user_item2
      user_item3
      store_prices1
      store_prices2
      store_prices3     
      
      expect(store1.users_total_price (store1.items)).to eq "15.00"
    end
  end
end