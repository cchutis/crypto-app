class Trade < ApplicationRecord
  belongs_to :crypto
  belongs_to :user
end
