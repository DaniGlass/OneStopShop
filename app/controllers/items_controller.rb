class ItemsController < ApplicationController

	def search
		Item.item_search
	end

	def search_results
	end

end
