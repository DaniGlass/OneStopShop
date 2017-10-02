class ResultsController < ApplicationController
  def index
    user = User.find(params[:id])

    render json: user.results.to_json
  end
end
