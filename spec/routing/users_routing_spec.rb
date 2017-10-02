require "rails_helper"

RSpec.describe "Routing to users", :type => :routing do

  it "routes GET /users/1 to users#show" do
    expect(:get => "/users/1").to route_to("users#show", :id => "1")
  end

end
