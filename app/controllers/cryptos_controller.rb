class CryptosController < ApplicationController
  before_action :authorized?, only: [:index, :show]

  def index
    @cryptos = Crypto.all
    @cryptos.each do |crypto|
      crypto.update(value: Coinmarketcap.coin(crypto.coinbase_id)["data"]["quotes"]["USD"]["price"])
    end
  end

  def show
    @crypto = Crypto.find(params[:id])
    @cryptos = Crypto.all
    @cryptos.each do |crypto|
      crypto.update(value: Coinmarketcap.coin(crypto.coinbase_id)["data"]["quotes"]["USD"]["price"])
    end
  end
end
