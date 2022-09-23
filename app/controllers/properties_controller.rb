require_relative "../services/fetch_price_service"

class PropertiesController < ApplicationController
  def index
    @properties = Property.all
    @property = Property.new
    @markers = @properties.geocoded.map do |property|
      {
        lat: property.latitude,
        lng: property.longitude
      }
    end
  end

  def show
    @properties = Property.all
    @property = Property.find(params[:id])
    @transactions = @property.transactions.sort_by(&:date).reverse
    if params[:filter].present?
      if params[:filter] == "Show All"
        @transactions = @property.transactions.sort_by(&:date).reverse
      else
        @transactions = @property.transactions.where("category ILIKE ?", "%#{params[:filter]}%")
      end
    end
    # @past_transactions = @property.transactions.past
    # @future_transactions = @property.transactions.future
    @suburb_overview = FetchPriceService.new(@property).call
    # @suburb_number = FetchPriceService.new(@property).number
    # date categorization of transactions
    @last = []
    @current = []
    @month = []
    # @month_revenues = []
    # @month_expenses = []
    @month_revenue = 0
    @month_expense = 0
    @month_total = 0
    @transactions.each do |transaction|
      if transaction.date < "2022-07-01".to_date && transaction.date > "2021-06-30".to_date
        @last << transaction
      end
      if transaction.date > "2022-06-30".to_date
        @current << transaction
      end
      if transaction.date.month == Time.now.month && transaction.date.year == Time.now.year
        @month << transaction
        if transaction.cash_flow_type == "Revenue"
          @month_revenue += transaction.amount.round
          @month_total += transaction.amount.round
          # @month_revenues << transaction
        else
          @month_expense += transaction.amount.round
          @month_total -= transaction.amount.round
          # @month_expenses << transaction
        end
      end
    end
    @marker = { lat: @property.latitude, lng: @property.longitude }
    @average = Transaction.expenses.select(:category, (:amount)).group(:category).sum(:amount).inject({}) { |h, (k, v)| h[k] = (v / @properties.count).round(); h }
    @single =  @property.transactions.expenses.select(:category, :amount).group(:category).sum(:amount)
    # @single_month = @month_expenses.select(:category, :amount).group(:category).sum(:amount)
    @revenue = @property.transactions.revenues.sum(:amount)
    @expense = @property.transactions.expenses.sum(:amount)
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user
    if @property.save
      redirect_to property_path(@property), notice: "Property Created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def property_params
    params.require(:property).permit(:bedrooms, :address, :property_type, :photo)
  end
end
