class Crypto < ApplicationRecord
  has_many :trades
  has_many :users, through: :trades

  #name, decription, logo, symbol, current_value
  # def self.name(x)
  #   Coinmarketcap.coin(x)["data"]["name"]
  # end
  #
  # def self.description(x)
  #   Coinmarketcap.coin(x)["data"]["description"]
  # end
  #
  # def self.symbol(x)
  #       Coinmarketcap.coin(x)["data"]["symbol"]
  # end
  #
  # def self.current_value(x)
  #       Coinmarketcap.coin(x)["data"]["quotes"]["USD"]["price"].round(2)
  # end

  def coin_avg_price
    self.trades.inject(0) {|sum, trade|
      sum + trade.price} / self.trades.count
  end
end
