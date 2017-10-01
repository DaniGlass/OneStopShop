class UserItemsController < ApplicationController

  def index
  	# I need to check with Edgar how to call cunrrent_user
  	# @item_list = current_user.items
  end

	def create
	  # p "*" * 100 checked the route from add button and working fine.
	  # UserItem.create(user_id: current_user.id, item_id: Will pass from front end)

	end

end


# Paste to user_items.index.html.erb

# <% @item_list.pluck(:name).each do |item_name| %>
# 	<%= item_name %> <%= link_to 'delete this item', user_items_path(We are at index page so user_items do not have id on url. Where shold I sent to delete this list(use_items)??? ), method: :delete, data: { confirm: 'Are you sure?' } %>
# <% end %>