require 'rails_helper'

describe UserItemsController do
  
  let!(:user) { User.create!(name: "Ikuko", username: "Ikko", email: "ikko@ikko.com", password: "schoeller")}
  
  let!(:category) { Category.create!(name: "Meat, Poultry, & Fish") }
  
  let!(:item) { Item.create!(category: category, name: "Ground Beef, 1 lb.", description: "Grass Fed Ground Beef 85% Lean, 15\% Fat", image_url: "https://i1.wp.com/foodpoisoningbulletin.com/wp-content/uploads/Raw-Ground-Beef.jpg?resize=350\%2C200&ssl=1", tags: "ground beef hamburger burger") }

  let!(:user_item) { UserItem.create!(user_id: user.id, item_id: item.id) }

  describe "GET #index" do
    it "returns JSON" do
      get :index, params: { :user_id => user.id }, :format => :json
    end
  end

  # describe "POST #create" do
    
  #   # params = {item: {name: "Ground Beef, 1 lb."}}

  #   context "when valid params are passed" do
  #   #   it "assigns a new user_item to @user_item" do
  #   #     post :create, params: {item: {name: "Ground Beef, 1 lb."}}, params: { :user_id => user.id }
  #   #     expect(assigns(:user_item)).to be_a_new UserItem
  #   #   end
  #   end
  # end

  # describe "DELETE #destroy" do

  #   it "destroys the requested user_item" do
  #     expect { delete(:action=>"destroy", :user=>user.id, :controller=>"user_items", :post_id=>user_item) }.to change(UserItem, :count).by(-1)
  #   end
  # end
  
end
