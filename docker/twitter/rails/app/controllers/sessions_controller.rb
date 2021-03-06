class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by_email(params[:email])
      session[:user_id] = @user.id
      redirect_to root_url, notice: 'logged in'
    else
      session[:user_id] = nil
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'logged out'
  end
end
