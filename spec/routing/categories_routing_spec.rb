require "rails_helper"

RSpec.describe "Routing to categories", :type => :routing do

  it "routes GET /categories to categories#index" do
    expect(:get => "/categories").to route_to("categories#index")
  end

  it "routes GET /categories/1 to categories#show" do
    expect(:get => "/categories/1").to route_to("categories#show", :id => "1")
  end

end
