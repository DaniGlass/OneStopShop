class UsersController < ApplicationController
  def show
    if params[:id] == "sign_out"
      current_user = nil
      redirect_to root_path
    else
      @user = User.find(params[:id])
    end
  end

  def new
    render :new
  end

  def create
    @user = User.new(new_user_params)
    if @user.save
      redirect_to root_path
    else
      @errors.to_json
    end
  end


  private

  def new_user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
