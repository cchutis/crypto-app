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
        if @user.wallet < params[:trade][:amount].to_i
          flash[:message] = "insufficient funds please add more"
          redirect_to new_trade_path
        else
        total_amount_of_cryptos = params[:trade][:amount].to_i/crypto.value
        trade = Trade.create(description: params[:trade][:description], user_id: @user.id, crypto_id: crypto.id, amount: total_amount_of_cryptos)
        byebug
        new_wallet_price = @user.wallet - params[:trade][:amount].to_i
        @user.update(wallet: new_wallet_price )
        redirect_to trades_path
      end
      end
    end
end
