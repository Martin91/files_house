class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:_current_user_id] = @user.id
      flash[:success] = "login success"
      redirect_to root_path
    else
      @user ||= User.new email: params[:user][:email]
      flash[:alert] = "login failed, please retry"
      render :new
    end
  end

  def destroy
    session[:_current_user_id] = nil
    flash[:info] = "logout success"
    redirect_to root_path
  end
end