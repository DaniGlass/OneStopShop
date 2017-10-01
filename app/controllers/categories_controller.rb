class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
		@items = @category.items
		# @items = @category.items.to_json
    # render json: @items
	end

end
