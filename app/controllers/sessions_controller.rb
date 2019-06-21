class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by(:username => params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/cryptos'
    else
      flash[:message] = "Invalid password and/or username. Please try again."
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:message] = "See you soon"
    redirect_to '/'
  end
end
