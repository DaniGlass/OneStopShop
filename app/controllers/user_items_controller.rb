class UserItemsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    user = User.first
    items = user.items
    render json: items.to_json
  end

  def create
    itemName = params[:item][:name]
    item = Item.find_by(name: itemName)
    userItem = UserItem.new
    userItem.user_id = User.first.id
    userItem.item_id = item.id
    userItem.save

    render json: userItem.to_json
  end

	def destroy
		@user_item = UserItem.find(params[:id])
    @user_item.destroy

	end

end


# Paste to user_items.index.html.erb

# <% @item_list.pluck(:name).each do |item_name| %>
# 	<%= item_name %>

# this part is not right. To delete we need to use user show page.
    # <%= button_to "Delete", {:controller => "user_items"}  %>
# <% end %>
