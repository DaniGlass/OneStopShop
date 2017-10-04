require "rails_helper"

RSpec.describe "Routing to results", :type => :routing do

  it "routes GET /users/1/results to results#index" do
    expect(:get => "/users/1/results").to route_to(
      :controller => "results",
      :action => "index",
      :id => "1"
    	)
  end

  it "routes GET /users/1/results/by_items_found to results#by_items_found" do
    expect(:get => "/users/1/results/by_items_found").to route_to(
      :controller => "results",
      :action => "by_items_found",
      :id => "1"
    	)
  end

  it "routes GET /users/1/results/by_price to results#by_lowest_price" do
    expect(:get => "/users/1/results/by_price").to route_to(
      :controller => "results",
      :action => "by_lowest_price",
      :id => "1"
    	)
  end

  it "routes GET /users/1/results/by_distance to results#by_shortest_distance" do
    expect(:get => "/users/1/results/by_distance").to route_to(
      :controller => "results",
      :action => "by_shortest_distance",
      :id => "1"
    	)
  end
  
 
 

end