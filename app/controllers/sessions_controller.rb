class SessionsController < ApplicationController
  def new
    if signed_in?
      redirect_to root_path
    else
      @title = "Sign in"
    end
  end
  
  def create
    if signed_in?
      redirect_to root_path
    else
      user = User.authenticate(params[:session][:email],
                               params[:session][:password])
      if user.nil?
        flash.now[:error] = "Invalid email/password combination."
        @title = "Sign in"
        render 'new'
      else
        sign_in user
        redirect_back_or user
      end
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end

end
