module Api

  class UsersController < ApplicationController

    before_action :set_user, only: [:update, :show, :destroy]

    def show
    end

    # This would save the user object with entered params in the DB
    def create
      @user = User.new(username: params[:username], email: params[:email], password: params[:password])

      if @user.save
        render json: {status: 'SUCCESS', message: 'Account successfully created', accessToken: @user.access_token}.to_json
      else
        render json: {errors: ["Sign up failed!"], status: 422}.to_json
      end

    end

    # This updates user params
    def update

      if @user.update(username: params[:username], email: params[:email], password: params[:password])
        render json: {status: 'SUCCESS', message: 'Account successfully updated', accessToken: @user.access_token}.to_json
      else
        render json: { errors: ['Update unsuccessful!'], status: 422 }.to_json
      end

    end

   # Delete User
    def destroy
      if @user.destroy
        render text: "Account has been successfully deleted.", status: 'SUCCESS'
      else
        render text: "Something went wrong..", status: 422
      end

    end


    private
      def set_user
        @user = User.find_by(access_token: params[:access_token])
      end

     # # White listing params
     #  def user_params
     #    params.require(:username, :email, :password).permit(:username, :email, :password)
     #  end

  end

end