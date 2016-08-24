class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :title
      t.text :description
      t.integer :category
      t.references :customer, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.decimal :total_price
      t.decimal :price

      t.timestamps null: false
    end
  end
end
