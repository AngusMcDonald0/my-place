class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:update, :destroy]

  def create
    @transaction = Transaction.new(transaction_params)
    @property = Property.find(params[:property_id])
    @transaction.property = @property
    if @transaction.save
      redirect_to property_path(@property), notice: "Transaction Added!"
    else
      respond_to do |format|
        format.html do
          @transactions = @property.transactions
          render "properties/show", status: :unprocessable_entity
        end
        format.text { render partial: "form", locals: { property: @property, transaction: @transaction }, formats: [:html] }
      end
    end
  end

  def update
    @property = @transaction.property
    if @transaction.update(transaction_params)
      redirect_to property_path(@property)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def edit
    @property = Property.find(params[:property_id])
    @transaction = Transaction.find(params[:id])

    respond_to do |format|
      format.json
    end
  end

  def destroy
    @property = @transaction.property
    @transaction.destroy
    redirect_to property_path(@property), status: :see_other, alert: "Transaction removed"
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:cash_flow_type, :date, :category, :amount, :description)
  end
end
