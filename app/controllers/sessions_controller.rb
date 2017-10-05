class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      log_in user
      params[:remember_me] == '1' ? remember(user) : forget(user)
      render json: {status: 'SUCCESS', message: 'You have logged in successfully'}.to_json
    else
      render json: {status: 422, errors: ['Invalid email or password']}.to_json
    end
  end

  def destroy
    log_out if logged_in?
    render json: {message: 'You have succesfully logged out.'}.to_json
  end
end