class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cpf
      t.integer :gender
      t.date :birthdate
      t.string :phone1
      t.string :phone2
      t.string :street
      t.integer :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps null: false
    end
    add_index :customers, :cpf
    add_index :customers, :id
  end
end
