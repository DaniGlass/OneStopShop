module Api

  class SessionsController < ApplicationController


   # If user login data is validated, access token will be returned to the client app
    def create
      @user = User.find_by(email: params[:email])
      if @user && @user.authenticate(params[:password])
        render json: {status: 'SUCCESS', accessToken:@user.access_token}.to_json
      else

        render json: {errors: ["Incorrect email or password."], status: 422}.to_json
      end
    end

   # Verifies access token, so that client app knows whether to login the user / not.
    def verify_access_token
      @user = User.find_by(access_token: params[:access_token])
      if @user
        render json: {
          status: 'SUCCESS', message: "User Verified."
        }.to_json
      else
        render json: {
          status: 422, message: "Verification failed"
        }.to_json
      end
    end

  end

end