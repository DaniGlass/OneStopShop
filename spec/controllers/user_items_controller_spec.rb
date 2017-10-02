require 'rails_helper'

describe UserItemsController do
  let(:user) { User.create(name: "Ikuko", email: "ikko@ikko", password: "schoeller")}
  let(:category) { Category.create!(name: "Meat, Poultry, & Fish") }
  let(:item) { Item.create!(category: Category.find_by(name: "Meat, Poultry, & Fish"), name: "Ground Beef, 1 lb.", description: "Grass Fed Ground Beef 85% Lean, 15\% Fat", image_url: "https://i1.wp.com/foodpoisoningbulletin.com/wp-content/uploads/Raw-Ground-Beef.jpg?resize=350\%2C200&ssl=1", tags: "ground beef hamburger burger") }
  let(:user_item) { UserItem.create!(user_id: user.id, item_id: item.id) }

  # describe "GET #show" do
  #   it "assigns the requested user_item to item" do
  #     get :show, params: { id: user_item.id }
  #     expect(assigns(:user_item)).to eq(user_item)
  #   end
  # end

  # describe "POST #create" dof
  #   context "when valid params are passed" do
  #     it "assigns a new user_item to @user_item" do
  #       p "$^" * 100
  #       p user

  #       post :create
  #       expect(assigns(:user_item)).to be_a_new UserItem
  #     end


  #     it "assigns a new user_item to @user_item" do
  #       p "*" * 100
  #       p user
  #       post :create
  #       expect(assigns(:user_item)).to be_a_new UserItem
  #     end

  #     it "creates a new user_item in the database" do
  #       expect {post :create, { user_item: { user_id: user.id, item_id: item.id }}}.to change { UserItem.count }.by(1)
  #     end
  #   end
  # end

#   describe "DELETE #destroy" do
#     it "responds with status code 302" do
#       delete :destroy, { id: game.id }
#       expect(response).to have_http_status 302
#     end

#     it "destroys the requested game" do
#       expect { delete(:destroy, { id: game.id }) }.to change(Game, :count).by(-1)
#     end

#     it "sets a notice that the game was destroyed" do
#       delete :destroy, { id: game.id }
#       expect(flash[:notice]).to match /Game was successfully destroyed/
#     end

#     it "redirects to the games list" do
#       delete :destroy, { id: game.id }
#       expect(response).to redirect_to games_url
#     end
#   end
end
