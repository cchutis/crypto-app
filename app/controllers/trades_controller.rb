class TradesController < ApplicationController
  def index
    user = User.find(session[:user_id])
    if params[:description]

     @trades = user.trades.select do |trade|
       trade.description == params[:description]
     end
   elsif params[:coin]
     @trades = user.trades.select do |trade|
       trade.crypto.name == params[:coin]
     end
   else
    @trades = user.trades.all

  end
  end

  def show
  end

  def buy_form
    @trade = Trade.new

  end

  def bought
    @cryptos = Crypto.all
    @cryptos.each do |crypto|
      if !crypto.name == "Goldoubloons"
        crypto.update(value: Coinmarketcap.coin(crypto.coinbase_id)["data"]["quotes"]["USD"]["price"].round(2))
      end
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
        new_wallet_price = @user.wallet - params[:trade][:amount].to_i
        current_crypto = crypto.name.downcase.to_sym
        new_crypto_amount =   @user[current_crypto] + total_amount_of_cryptos
        @user.update(current_crypto => new_crypto_amount)
        @user.update(wallet: new_wallet_price )
        trade = Trade.create(description: params[:trade][:description], user_id: @user.id, crypto_id: crypto.id, amount: total_amount_of_cryptos, price: params[:trade][:amount].to_f)
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
      if !crypto.name == "Goldoubloons"
        crypto.update(value: Coinmarketcap.coin(crypto.coinbase_id)["data"]["quotes"]["USD"]["price"].round(2))
      end
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
      new_wallet_price = @user.wallet + ( total_amount_of_cryptos * crypto.value)
      new_crypto_amount =   @user[current_crypto] - total_amount_of_cryptos
      trade = Trade.create(description: params[:trade][:description], user_id: @user.id, crypto_id: crypto.id, amount: total_amount_of_cryptos, price:( total_amount_of_cryptos * crypto.value))
      @user.update(wallet: new_wallet_price )
      @user.update(current_crypto => new_crypto_amount)

      redirect_to trades_path
      end
    end
  end
end
