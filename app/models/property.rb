class Property < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_one_attached :photo

  def total_profit
    transactions.map do |transaction|
      transaction.cash_flow_type == "Revenue" ? transaction.amount : - transaction.amount
    end.sum
  end
end
