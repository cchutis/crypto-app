class User < ApplicationRecord
  has_many :trades
  has_many :cryptos, through: :trades

    has_secure_password
  end
