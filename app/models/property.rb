class Property < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_one_attached :photo
  # validates :photo, attached: true, content_type: ['image/png', 'image/jpeg']
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :address, presence: true
  validates :bedrooms, presence: true
  validates :property_type , presence:true


  def total_profit
    # transactions.map do |transaction|
    #   transaction.cash_flow_type == "Revenue" ? transaction.amount : -transaction.amount
    # end.sum
    @month_total = 0
    transactions.each do |transaction|
      if transaction.date.month == Time.now.month && transaction.date.year == Time.now.year
        if transaction.cash_flow_type == "Revenue"
          @month_total += transaction.amount.round
        else
          @month_total -= transaction.amount.round
        end
      end
    end
    return @month_total
  end


  def profitable?
    if total_profit.positive?
      return "fa-solid fa-caret-up text-success"
    elsif total_profit.zero?
      return "fa-solid fa-caret-right text-warning"
    else
      return "fa-solid fa-caret-down text-danger"
    end
  end

  CATEGORIES = ["Unit", "House"]
end
