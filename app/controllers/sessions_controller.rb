class SessionsController < ApplicationController
  
  def new
  end
<<<<<<< HEAD
  

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id]=user.id
      flash[:success] = "You have successfulyy logged in"
=======

  def create
    session[:user_id] = nil
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
>>>>>>> feature
      redirect_to root_path
    else
      flash.now[:error] = "There was something wrong with your login information"
      render 'new'
    end
  end
<<<<<<< HEAD
  
  def destroy
    byebug
    session[:user_id]= nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
  end

=======

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
  end
>>>>>>> feature
end
