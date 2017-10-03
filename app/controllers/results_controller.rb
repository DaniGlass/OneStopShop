class ResultsController < ApplicationController
  def index
    user = User.find(params[:id])

    render json: user.results.to_json

  end

  def by_items_found
    user = User.find(params[:id])

    render json: user.results.to_json
  end

  def by_lowest_price
    user = User.find(params[:id])

    results = user.results.each do |store|
        p store["name"]
    end

    # render json: results.to_json
  end

  def by_shortest_distance
    render json: results.to_json
  end

end
