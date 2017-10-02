require "rails_helper"

RSpec.describe "Routing to user_items", :type => :routing do

  it "routes GET /user_items to user_items#index" do
    expect(:get => "/user_items").to route_to("user_items#index")
  end

  it "routes POST /user_items to user_items#create" do
    expect(:post => "/user_items").to route_to("user_items#create")
  end

  it "routes DELETE /user_items/1 to user_items#destroy" do
    expect(:delete => "/user_items/1").to route_to("user_items#destroy", :id => "1")
  end
end
