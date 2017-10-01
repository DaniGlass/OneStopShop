class ItemsController < ApplicationController

	def index
		@category = Category.find(params[:category_id])
		@items = @category.items
	end
end
