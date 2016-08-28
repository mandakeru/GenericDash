class AddQuantityProductToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :product_quantity, :integer
  end
end
