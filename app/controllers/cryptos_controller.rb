class CryptosController < ApplicationController

  def index
    !authorized?
    @cryptos = Crypto.all

    @cryptos.each do |crypto|
      if !crypto.name == "Goldoubloons" 
        crypto.update(value: Coinmarketcap.coin(crypto.coinbase_id)["data"]["quotes"]["USD"]["price"])
      end
    end

  end


  def show
    @crypto = Crypto.find(params[:id])
  end
end
