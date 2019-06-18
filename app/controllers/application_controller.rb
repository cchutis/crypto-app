class ApplicationController < ActionController::Base
  helper_method :logged_in?


  def current_user
      if session[:user_id]
        @user = User.find(session[:user_id])
      end
  end

  def logged_in?
    !!current_user
  end

  def authorized?
    redirect_to signup_path unless logged_in?

  end

  def update_value
    @cryptos = Crypto.all
    @cryptos.each do |crypto|
      crypto.update(value: Coinmarketcap.coin(crypto.coinbase_id)["data"]["quotes"]["USD"]["price"].round(2))
    end
  end

end
