class Transaction < ApplicationRecord
  attr_accessor :frequency
  scope :future, -> { where("date > ?", Date.today) }
  scope :past, -> { where("date <= ?", Date.today) }
  scope :revenues, -> { where(cash_flow_type: "Revenue") }
  scope :expenses, -> { where(cash_flow_type: "Expense") }
  belongs_to :property
end
