# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  category    :integer
#  price       :decimal(, )
#  quantity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_id    (id)
#  index_products_on_name  (name)
#

class Product < ActiveRecord::Base
  extend Enumerize
  has_many :transactions
  
  enumerize :category, in: { 'Objeto': 1, 'Alimento': 2}
  
  validates :name, :price, :quantity, presence: true
  validates :description, length: { maximum: 120 }
  validates :quantity, length: { minimum: 1 }
  
end
