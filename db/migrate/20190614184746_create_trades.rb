class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.string :crypto
      t.integer :number
      t.integer :cash
      t.belongs_to :user, foreign_key: true
      t.belongs_to :bank, foreign_key: true

      t.timestamps
    end
  end
end
