class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.integer :cash
      t.integer :user_id
      t.integer :crypto_id


      t.timestamps
    end
  end
end
