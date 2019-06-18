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
    @cryptos = Crypto.all
    @cryptos.each do |crypto|
      crypto.update(value: Coinmarketcap.coin(crypto.coinbase_id)["data"]["quotes"]["USD"]["price"].round(2))
      end

    @user = User.find(session[:user_id])
    crypto = Crypto.find_by(name: params[:trade][:crypto_id])
      if
        params[:trade][:description] == "Buy"
        total_amount_of_cryptos = @user.wallet/crypto.value
        trade = Trade.create(description: params[:trade][:description], user_id: @user.id, crypto_id: crypto.id, amount: total_amount_of_cryptos)
        redirect_to trades_path
      end
    end
end
