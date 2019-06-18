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
  end
end
