class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :email
      t.integer :phone
      t.float :wallet , :default => 0.00
      t.float :bitcoin , :default => 0.00
      t.float :ethereum , :default => 0.00
      t.float :litecoin , :default => 0.00
      t.float :bitcoin_cash , :default => 0.00
      t.float :stellar , :default => 0.00
      t.float :dogecoin , :default => 0.00
      t.float :eos , :default => 0.00
      t.float :monero , :default => 0.00
      t.float :qtum , :default => 0.00
      t.timestamps
    end
  end
end
