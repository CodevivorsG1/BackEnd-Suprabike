class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :update, :destroy]

  # GET /transactions
  def index
    @transactions = Transaction.paginate(:page => params[:page], :per_page => 10)

    render json: @transactions
  end

  # GET /transactions/1
  def show
    render json: @transaction
  end

  # POST /transactions
  def create
    if params[:technician_id]
      @transaction = Transaction.new(transaction_with_tech_params)
    else
      @transaction = Transaction.new(transaction_with_store_params)
    end
    #@user =  Technician.find(:id)
    if @transaction.save
      @user =  User.find(params[:user_id])
      if params[:technician_id]
        @tech = Technician.find(params[:technician_id])
        TransactionMailer.tecnic_service(@user ,@tech).deliver
        TransactionMailer.new_request(@user,@tech).deliver
      elsif params[ :store_id]
        @store = Store.find(params[:store_id])
        @items = params[:items]
        if @items != nil
          TransactionMailer.new_purchase(@user,@store,@items).deliver
        end
      end
      render json: @transaction, status: :created, location: @transaction
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transactions/1
  def update
    if @transaction.update(transaction_params)
      render json: @transaction
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transactions/1
  def destroy
    @transaction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transaction_with_tech_params
      params.permit(:date_transaction, :type_transaction, :total_transaction, :user_id, :technician_id)
    end

    def transaction_with_store_params
      params.permit(:date_transaction, :type_transaction, :total_transaction, :user_id, :store_id)
    end
end
