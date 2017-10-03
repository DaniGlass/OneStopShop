class ItemsController < ApplicationController

	def search
	end

	def search_results
    input = params[:input]
		ItemsHelper.search("input").to_json
  end

end
