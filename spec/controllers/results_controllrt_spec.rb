require 'rails_helper'

describe ResultsController, type: :controller do

  let!(:user) { User.create!(name: "Ikko", username: "ikko", email: "ikko@ikko.com", password: "schoeller") }
 
  describe "GET #index" do
    it "returns JSON" do
      get :index, :format => :json, params: {id: user.id}
    end
  end

  describe "GET #by_lowest_price" do
    it "returns JSON" do
      get :by_lowest_price, :format => :json, params: {id: user.id}
    end
  end

  describe "GET #by_shortest_distance" do
    it "returns JSON" do
      get :by_shortest_distance, :format => :json, params: {id: user.id}
    end
  end

end
