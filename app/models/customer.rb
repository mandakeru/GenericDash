# == Schema Information
#
# Table name: customers
#
#  id           :integer          not null, primary key
#  name         :string
#  cpf          :string
#  gender       :integer
#  birthdate    :date
#  phone1       :string
#  phone2       :string
#  street       :string
#  number       :integer
#  neighborhood :string
#  city         :string
#  state        :string
#  zip_code     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_customers_on_cpf  (cpf)
#  index_customers_on_id   (id)
#

class Customer < ActiveRecord::Base
  extend Enumerize
  has_many :transactions
  enumerize :gender, in: {'Masculino': 1, 'Feminino': 2}
    
  validates :name, :cpf, presence: true
  validates :phone1, :phone2, length: { is: 12 }
  
end
