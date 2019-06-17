class SessionsController < ApplicationController

  def new

  end

  def create
    #authenticate the user
    # byebug
    @user = User.find_by(:username => params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/cryptos'
    else
      redirect_to '/cryptos'
    end
  end

  def destroy
    session[:user_id] = nil
  end

end
