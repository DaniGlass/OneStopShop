class CategoriesController < ApplicationController

	def index
		@categories = Category.all
    render json: @categories
	end

	def show
		@category = Category.find(params[:id])
		items = @category.items
    render json: items.to_json
	end

end
