class ResultsController < ApplicationController
  def index
    user = User.find(params[:id])

    render json: user.results.to_json

    whole_foods_response = YelpAdapter.search("Whole Foods")["businesses"]

    p "*" * 20
    p "CLOSEST WHOLE FOODS: "
    p closest_whole_foods = whole_foods_response.sort_by { |rest| rest["distance"] }.first

    p "*" * 20
    walgreens_response = YelpAdapter.search("Walgreens")["businesses"]
    p "CLOSEST Walgreens: "
    p closest_walgreens = walgreens_response.sort_by { |rest| rest["distance"] }.first

    p "*" * 20
    cvs_response = YelpAdapter.search("CVS")["businesses"]
    p "CLOSEST CVS: "
    p closest_CVS = cvs_response.sort_by { |rest| rest["distance"] }.first

    p "*" * 20
    walmart_response = YelpAdapter.search("Walmart")["businesses"]
    p "CLOSEST Walmart: "
    p closest_Walmart = walmart_response.sort_by { |rest| rest["distance"] }.first

    p "*" * 20
    target_response = YelpAdapter.search("target")["businesses"].delete_if { |store| store["name"] != "Target" }
    p "CLOSEST Target: "
    p closest_Target = target_response.sort_by { |rest| rest["distance"] }.first

    p "*" * 20
    safeway_response = YelpAdapter.search("Safeway")["businesses"]
    p "CLOSEST Safeway: "
    p closest_safeway = safeway_response.sort_by { |rest| rest["distance"] }.first
  end
end
