class CryptosController < ApplicationController

  def index
    @cryptos = Crypto.all
    x = 1
    @cryptos.each do |crypto|
      crypto.update(value: Crypto.current_value(x))
      x += 1
    end
    if session[:user_id]
  else
    redirect_to signup_path
  end
end

  def show

  end
end
