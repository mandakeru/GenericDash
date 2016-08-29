class HomeController < ApplicationController
  def index
    @products = Product.all.count
    @customers = Customer.all.count
    @vendas = Transaction.where(category: 2).all.count
    @compras = Transaction.where(category: 1).all.count
    
    @vendas_graf = Transaction.where(category: 2).all
    
    
    @total_vendas = "%.2f" % Transaction.where(category: 2).sum(:total_price)
    @total_gastos = "%.2f" % Transaction.where(category: 1).sum(:total_price)
    
    
   
   render_data_sells
   render_data_gastos
   
    
  end
  
  
  private
  
  def render_data_sells
   
   @months = [
   @vendas_mes_Jan = Transaction.where("category = 2 AND month = '1'").count,
   @vendas_mes_Fev = Transaction.where("category = 2 AND month = '2'").count,
   @vendas_mes_Mar = Transaction.where("category = 2 AND month = '3'").count,
   @vendas_mes_Abr = Transaction.where("category = 2 AND month = '4'").count,
   @vendas_mes_Mai = Transaction.where("category = 2 AND month = '5'").count,
   @vendas_mes_Jun = Transaction.where("category = 2 AND month = '6'").count,
   @vendas_mes_Jul = Transaction.where("category = 2 AND month = '7'").count,
   @vendas_mes_Ago = Transaction.where("category = 2 AND month = '8'").count,
   @vendas_mes_Set = Transaction.where("category = 2 AND month = '9'").count,
   @vendas_mes_Out = Transaction.where("category = 2 AND month = '10'").count,
   @vendas_mes_Nov = Transaction.where("category = 2 AND month = '11'").count,
   @vendas_mes_Dez = Transaction.where("category = 2 AND month = '12'").count
  ]
  
  #render json: @months
       
   
  end
  
  def render_data_gastos
    
   @desp_months = [
   @vendas_mes_Jan = Transaction.where("category = 1 AND month = '1'").count,
   @vendas_mes_Fev = Transaction.where("category = 1 AND month = '2'").count,
   @vendas_mes_Mar = Transaction.where("category = 1 AND month = '3'").count,
   @vendas_mes_Abr = Transaction.where("category = 1 AND month = '4'").count,
   @vendas_mes_Mai = Transaction.where("category = 1 AND month = '5'").count,
   @vendas_mes_Jun = Transaction.where("category = 1 AND month = '6'").count,
   @vendas_mes_Jul = Transaction.where("category = 1 AND month = '7'").count,
   @vendas_mes_Ago = Transaction.where("category = 1 AND month = '8'").count,
   @vendas_mes_Set = Transaction.where("category = 1 AND month = '9'").count,
   @vendas_mes_Out = Transaction.where("category = 1 AND month = '10'").count,
   @vendas_mes_Nov = Transaction.where("category = 1 AND month = '11'").count,
   @vendas_mes_Dez = Transaction.where("category = 1 AND month = '12'").count
  ]
    
  end
  
  
  
  
  
end
