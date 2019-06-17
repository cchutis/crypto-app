class CreateCryptos < ActiveRecord::Migration[5.2]
  def change
    create_table :cryptos do |t|
      t.string :name
      t.string :description
      t.string :logo
      t.string :symbol
      t.integer :value
  

      t.timestamps
    end
  end
end
