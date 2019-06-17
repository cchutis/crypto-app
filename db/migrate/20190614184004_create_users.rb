class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :email
      t.integer :phone
      t.float :wallet , :default => 0.00

      t.timestamps
    end
  end
end
