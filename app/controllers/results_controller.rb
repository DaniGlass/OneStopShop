class ResultsController < ApplicationController
  def index
    user = User.find(params[:id])

    p "*" * 100
    p @stores = user.find_stores
    p ":)" * 100
  end
end
