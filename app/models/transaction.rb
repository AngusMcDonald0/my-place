class Transaction < ApplicationRecord
  attr_accessor :frequency
  scope :future, -> { where("date > ?", Date.today) }
  scope :past, -> { where("date <= ?", Date.today) }

  belongs_to :property
end
