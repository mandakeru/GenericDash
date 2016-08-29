class HomeController < ApplicationController
  def index
    @products = Product.all.count
    @customers = Customer.all.count
    @vendas = Transaction.where(category: 2).all.count
    @compras = Transaction.where(category: 1).all.count
    
    @vendas_graf = Transaction.where(category: 2).all
    
    
    @total_vendas = "%.2f" % Transaction.where(category: 2).sum(:total_price)
    @total_gastos = "%.2f" % Transaction.where(category: 1).sum(:total_price)
   
    
    
  end
  
  
  private
  
  def render_data_sells
    
    @vendas_mes = Transaction.where("category = 2 AND created_at")
  end
  
  
  
  
  
end
