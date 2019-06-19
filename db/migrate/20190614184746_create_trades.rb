class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.string :description
      t.float :amount
      t.float :price
      t.belongs_to :user, foreign_key: true
      t.belongs_to :crypto, foreign_key: true

      t.timestamps
    end
  end
end
