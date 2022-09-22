class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:update, :destroy]

  def create
    @transaction = Transaction.new(transaction_params)
    @property = Property.find(params[:property_id])
    @transaction.property = @property
    respond_to do |format|
      if @transaction.save
        @last = []
        @current = []
        @month = []
        @month_revenue = 0
        @month_expense = 0
        @month_total = 0
        @properties = Property.all
        @transactions = @property.transactions.sort_by(&:date).reverse
        if params[:filter].present?
          if params[:filter] == "Show All"
            @transactions = @property.transactions.sort_by(&:date).reverse
          else
            @transactions = @property.transactions.where("category ILIKE ?", "%#{params[:filter]}%")
          end
        end
        @past_transactions = @property.transactions.past
        @future_transactions = @property.transactions.future
        @marker = { lat: @property.latitude, lng: @property.longitude }
        @average = Transaction.expenses.select(:category, (:amount)).group(:category).sum(:amount).inject({}) { |h, (k, v)| h[k] = (v / @properties.count).round(); h }
        @single =  @property.transactions.expenses.select(:category, :amount).group(:category).sum(:amount)
        @revenue = @property.transactions.revenues.sum(:amount)
        @expense = @property.transactions.expenses.sum(:amount)
        @suburb_overview = FetchPriceService.new(@property).call
        @transactions.each do |transaction|
          if transaction.date < "2022-07-01".to_date && transaction.date > "2021-06-30".to_date
            @last << transaction
          end
          if transaction.date > "2022-06-30".to_date
            @current << transaction
          end
          if transaction.date.month == Time.now.month && transaction.date.year == Time.now.year
            @month << transaction
          end
          if transaction.date.month == Time.now.month && transaction.date.year == Time.now.year
            @month << transaction
            if transaction.cash_flow_type == "Revenue"
              @month_revenue += transaction.amount.round
              @month_total += transaction.amount.round
            else
              @month_expense += transaction.amount.round
              @month_total -= transaction.amount.round
            end
          end
        end
        format.html { redirect_to property_path(@property), alert: "Transaction Created!" }
      else
        format.html do
          @transactions = @property.transactions
          render "properties/show", status: :unprocessable_entity
        end
      end
      format.json
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
