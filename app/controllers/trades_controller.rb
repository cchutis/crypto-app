class TradesController < ApplicationController
  def index
    @trades = Trade.all
  end

  def show
  end

  def new
    @trade = Trade.new
  end

  def create
    @user = User.find(session[:user_id])
    byebug
  end
end
