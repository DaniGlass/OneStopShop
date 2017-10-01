class UserItemsController < ApplicationController

	def create
	  p "$" * 100 
	  p params[:user_items]
	  # checked the route from add button and working fine.
	  # UserItem.create(user_id: current_user.id, item_id: Will pass from front end)
	end

  def show
  	p "&" * 100
  	# I need to check with Edgar how to call cunrrent_user
  	# @item_list = current_user.items
  end

	def destroy
		p "*" * 100
	end

end


# Paste to user_items.index.html.erb

# <% @item_list.pluck(:name).each do |item_name| %>
# 	<%= item_name %> 

# this part is not right. To delete we need to use user show page.
    # <%= button_to "Delete", {:controller => "user_items"}  %>
# <% end %>