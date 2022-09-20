class Transaction < ApplicationRecord
  attr_accessor :frequency

  validates :amount, presence: true

  scope :future, -> { where("date > ?", Date.today) }
  scope :past, -> { where("date <= ?", Date.today) }
  scope :revenues, -> { where(cash_flow_type: "Revenue") }
  scope :expenses, -> { where(cash_flow_type: "Expense") }
  scope :maintenances, -> { where(category: "Maintenance") }
  scope :utilities, -> { where(category: "Utility") }
  scope :mortgages, -> { where(category: "Mortgage") }
  scope :others, -> { where(category: "Other") }
  belongs_to :property
  CATEGORIES = ["Revenue", "Expense"]
end
