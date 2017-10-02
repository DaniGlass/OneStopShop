class UsersController < ApplicationController
  def show
    if params[:id] == "sign_out"
      current_user = nil
      redirect_to root_path
    else
      @user = User.find(params[:id])
    end
  end
end
