class TransactionsController < ApplicationController
  def create
    @transaction = Transaction.new(transaction_params)
    @property = Property.find(params[:property_id])
    @transaction.property = @property
    if @transaction.save
      redirect_to property_path(@property), alert: "Transaction Created!"
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:cash_flow_type, :date, :category, :amount, :description)
  end
end
