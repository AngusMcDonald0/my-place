require_relative "../services/fetch_price_service"

class PropertiesController < ApplicationController
  def index
    @properties = Property.all
    @property = Property.new
  end

  def show
    @properties = Property.all
    @property = Property.find(params[:id])
    @transaction = Transaction.new
    @transactions = @property.transactions.sort_by(&:date).reverse
    @past_transactions = @property.transactions.past
    @future_transactions = @property.transactions.future
    @marker = { lat: @property.latitude, lng: @property.longitude }
    @average = Transaction.expenses.select(:category, (:amount)).group(:category).sum(:amount).inject({}) { |h, (k, v)| h[k] = (v / @properties.count).round(); h }
    @single =  @property.transactions.expenses.select(:category, :amount).group(:category).sum(:amount)
    @revenue = @property.transactions.revenues.sum(:amount)
    @expense = @property.transactions.expenses.sum(:amount)
    @suburb_overview = FetchPriceService.new(@property).call
    # @suburb_number = FetchPriceService.new(@property).number
    # date categorization of transactions
    @last = []
    @current = []
    @month = []
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
    end
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user
    if @property.save
      redirect_to property_path(@property), alert: "Property Created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    if @property.update(property_params)
      redirect_to property_path(@property), alert: "Property Updated!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @property.destroy
    redirect_to property_path(@property), alert: "Property Deleted!"
  end

  private

  def property_params
    params.require(:property).permit(:bedrooms, :address, :property_type, :photo)
  end
end
