class CreateCryptos < ActiveRecord::Migration[5.2]
  def change
    create_table :cryptos do |t|
      t.string :value
      t.string :name
      t.string :description
      t.string :logo
      t.string :symbol
      t.belongs_to :wallet, foreign_key: true

      t.timestamps
    end
  end
end
