class TransactionsController < ApplicationController
  def create
    @transaction = Transaction.new(transaction_params)
    @property = Property.find(params[:property_id])
    @transaction.property = @property
    respond_to do |format|
      if @transaction.save
        format.html { redirect_to property_path(@property), alert: "Transaction Created!" }
        format.json {}
      else
        format.html do
          @transactions = @property.transactions
          render "properties/show", status: :unprocessable_entity
        end
        format.json {}
      end
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:cash_flow_type, :date, :category, :amount, :description)
  end
end
