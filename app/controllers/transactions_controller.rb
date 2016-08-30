class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  # GET /transactions
  # GET /transactions.json
  def index
    @transactions = Transaction.all
    respond_to do |format|
      format.html
      format.csv 
      format.xls { send_data text: @transactions.to_csv(col_sep: "\t") }
    end
  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end

  # GET /transactions/1/edit
  def edit
  end

  # POST /transactions
  # POST /transactions.json
  def create
  @transaction = Transaction.new(transaction_params)
  @produto = @transaction.product
  @quantidade = @transaction.product_quantity
  @transaction.month = Time.now.month
  respond_to do |format|
   if @transaction.save
     @transaction.month = Time.now.month
     estoque = @produto.quantity - @quantidade
      @produto.update(:quantity => estoque)
     format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
     format.json { render :show, status: :created, location: @transaction }
     else
      format.html { render :new }
      format.json { render json: @transaction.errors, status: :unprocessable_entity }
     end
   end
  end

  # PATCH/PUT /transactions/1
  # PATCH/PUT /transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:title, :description, :category, :customer_id, :product_id, :total_price, :price,
      :product_quantity, :month)
    end
    
    
end
