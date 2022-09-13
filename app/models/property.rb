class Property < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_one_attached :photo
end
