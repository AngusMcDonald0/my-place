class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @properties = Property.all
    @property = Property.find(params[:id])
    @transaction = Transaction.new
    @transactions = @property.transactions.sort_by(&:date)
    @past_transactions = @property.transactions.past
    @future_transactions = @property.transactions.future
    @marker = { lat: @property.latitude, lng: @property.longitude }
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
