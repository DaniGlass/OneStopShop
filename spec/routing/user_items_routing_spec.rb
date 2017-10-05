require "rails_helper"

RSpec.describe "Routing to user_items", :type => :routing do

  it "routes GET /users/1/user_items to user_items#index" do
    expect(:get => "/users/1/user_items").to route_to(
      :controller => "user_items",
      :action => "index",
      :user_id => "1"
    	)
  end

  it "routes POST /users/1/user_items to user_items#create" do
    expect(:post => "/users/1/user_items").to route_to(
      :controller => "user_items",
      :action => "create",
      :user_id => "1"
    	)
  end

   it "routes POST /users/1/user_items/1 to user_items#destroy" do
    expect(:post => "/users/1/user_items/1").to route_to(
      :controller => "user_items",
      :action => "destroy",
      :user_id => "1",
      :id => "1"
    	)
  end

end
