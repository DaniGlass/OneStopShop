require "rails_helper"

RSpec.describe "Routing to items", :type => :routing do

  it "routes GET /items/search to items#search" do
    expect(:get => "/items/search").to route_to("items#search")
  end
  
  it "routes POST /items/search_results to items#search_results" do
    expect(:post => "items/search_results").to route_to("items#search_results")
  end
 

end