class TradesController < ApplicationController
  def index
    @trades = Trade.all
  end

  def show
  end

  def buy_form
    @trade = Trade.new

  end

  def bought
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
        redirect_to buy_path
      else
        total_amount_of_cryptos = params[:trade][:amount].to_i / crypto.value
        trade = Trade.create(description: params[:trade][:description], user_id: @user.id, crypto_id: crypto.id, amount: total_amount_of_cryptos)

        new_wallet_price = @user.wallet - params[:trade][:amount].to_i
        @user.update(wallet: new_wallet_price )
        current_crypto = crypto.name.downcase.to_sym
        new_crypto_amount =   @user[current_crypto] + total_amount_of_cryptos
        @user.update(current_crypto => new_crypto_amount)
        redirect_to trades_path
      end
    else
      sale
    end
  end

  def sell_form
    @trade = Trade.new

  end



  def sale

    @cryptos = Crypto.all
    @cryptos.each do |crypto|
      crypto.update(value: Coinmarketcap.coin(crypto.coinbase_id)["data"]["quotes"]["USD"]["price"].round(2))
    end

    @user = User.find(session[:user_id])
    crypto = Crypto.find_by(name: params[:trade][:crypto_id])

    current_crypto = crypto.name.downcase.to_sym

    if
      params[:trade][:description] == "Sell"

      if @user[current_crypto] == 0.0
        flash[:message] = "You do not own this coin"
        redirect_to sell_path
      else

      total_amount_of_cryptos = @user[current_crypto] * (params[:trade][:amount].to_i/100.5)
      trade = Trade.create(description: params[:trade][:description], user_id: @user.id, crypto_id: crypto.id, amount: total_amount_of_cryptos)
      new_wallet_price = @user.wallet + ( total_amount_of_cryptos * crypto.value)
      @user.update(wallet: new_wallet_price )
      new_crypto_amount =   @user[current_crypto] - total_amount_of_cryptos
      @user.update(current_crypto => new_crypto_amount)

      redirect_to trades_path
      end
    end
  end
end
