# == Schema Information
#
# Table name: transactions
#
#  id               :integer          not null, primary key
#  title            :string
#  description      :text
#  category         :integer
#  customer_id      :integer
#  product_id       :integer
#  total_price      :decimal(, )
#  price            :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  product_quantity :integer
#  month            :string
#
# Indexes
#
#  index_transactions_on_customer_id  (customer_id)
#  index_transactions_on_product_id   (product_id)
#
# Foreign Keys
#
#  fk_rails_0d676c9617  (product_id => products.id)
#  fk_rails_984bd8f159  (customer_id => customers.id)
#

class Transaction < ActiveRecord::Base
  extend Enumerize
  belongs_to :customer
  belongs_to :product
  
  enumerize :category, in: {'Compra': 1, 'Venda': 2}
  validates :title, :category, presence: true  
  validates :title, length: { maximum: 70 }
  
  
end
