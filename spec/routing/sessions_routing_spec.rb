require "rails_helper"

RSpec.describe "Routing to sessions", :type => :routing do

  it "routes POST api/login to api/sessions#create" do
    expect(:post => "api/login").to route_to(
      :controller => "api/sessions",
      :action => "create"
    	)
  end

  it "routes DELETE logout to sessions#destroy" do
    expect(:delete => "logout").to route_to(
      :controller => "sessions",
      :action => "destroy"
      )
  end

  it "routes GET api/verify to api/sessions#verify_access_token" do
    expect(:get => "api/verify").to route_to(
      :controller => "api/sessions",
      :action => "verify_access_token"
      )
  end

end