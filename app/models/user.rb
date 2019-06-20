class User < ApplicationRecord
  has_many :trades
  has_many :cryptos, through: :trades

    has_secure_password

    def coin_avg_price(crypto)
      user_trades = self.trades.select {|trade| trade.crypto_id == crypto.id}
      user_avg_price = user_trades.inject(0) {|sum, trade| sum + trade.price} / user_trades.count
    end
  end
