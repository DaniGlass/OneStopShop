class ResultsController < ApplicationController
  def index
    user = User.find(params[:id])

    render json: user.results_by_items_found.to_json

  end

  def by_lowest_price
    user = User.find(params[:id])

    render json: user.results_by_lowest_price.to_json
  end

  def by_shortest_distance
    user = User.find(params[:id])

    render json: user.results_by_shortest_distance.to_json
  end

end
