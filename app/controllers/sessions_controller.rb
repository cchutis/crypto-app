class SessionsController < ApplicationController

  def new

  end

  def create
    #authenticate the user

    @user = User.find_by(:username => params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/cryptos'
    else
      flash[:message] = "invalid passwor dor username"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/cryptos'
  end

end
