class ChangeMonth < ActiveRecord::Migration
  def change
    change_column :transactions, :month, :string
  end
end
