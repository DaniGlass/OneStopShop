class UserItemsController < ApplicationController
	
	require 'user_items_helper'
	include ItemAddingValidation

  skip_before_action :verify_authenticity_token

	def create
	  # user = User.find_by(params[:token])
	  # p params[:user_items][:item_id].to_i
	  # checked the route from add button and working fine.

    # itemPressed = params[:item][:name]
    itemName = params[:item][:name]
    item = Item.find_by(name: itemName)
	  userItem = UserItem.new
    userItem.user_id = User.first.id
    userItem.item_id = item.id
    userItem.save

    render json: userItem.to_json
	end

  def show
  	# p "&" * 100
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