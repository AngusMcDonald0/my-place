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

  # def net_profit
  #   transactions.each do |transaction|
  #     if transaction.date < "2022-07-01".to_date && transaction.date > "2021-06-30".to_date
  #       @last << transaction
  #     end
  #     if transaction.date > "2022-06-30".to_date
  #       @current << transaction
  #     end
  #     if transaction.date.month == Time.now.month && transaction.date.year == Time.now.year
  #       @month << transaction
  #       if transaction.cash_flow_type == "Revenue"
  #         @month_revenue += transaction.amount.round
  #         @month_total += transaction.amount.round
  #       else
  #         @month_expense += transaction.amount.round
  #         @month_total -= transaction.amount.round
  #       end
  #     end
  #   end
  # end

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
