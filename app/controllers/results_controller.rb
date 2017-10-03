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

    results = user.results.sort_by do |store|
        store.values.first[:total_price]
    end

    render json: results.to_json
  end

  def by_shortest_distance

  end

end
