class Property < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def total_profit
    transactions.map do |transaction|
      transaction.cash_flow_type == "Revenue" ? transaction.amount : -transaction.amount
    end.sum
  end

  CATEGORIES = ["Unit", "House"]
end
