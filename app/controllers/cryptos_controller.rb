class CryptosController < ApplicationController

  def index
    @cryptos = Crypto.all
    x = 1

    @cryptos.each do |crypto|
      crypto.update(value: Coinmarketcap.coin(1)["data"]["quotes"]["USD"]["price"].round(2))

    end
  end


  def show

  end
end
