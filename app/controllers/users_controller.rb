class UsersController < ApplicationController
  def show

  end
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to cryptos_path
  end

  def logout
    session[:user_id] = nil
    redirect_to signup_path
  end



private
def user_params
  params.require(:user).permit(:name,:username, :password,:email,:phone)
end


end
