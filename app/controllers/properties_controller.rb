require_relative "../services/fetch_price_service"

class PropertiesController < ApplicationController
  def index
    @properties = Property.all
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
    @average_suburb_price = FetchPriceService.new(@property).call
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

  private

  def property_params
    params.require(:property).permit(:bedrooms, :address, :property_type, :photo)
  end
end
