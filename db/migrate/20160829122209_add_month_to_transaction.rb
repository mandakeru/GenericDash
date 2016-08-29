class AddMonthToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :month, :date
  end
end
