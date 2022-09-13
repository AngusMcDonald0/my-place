class Property < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_one_attached :photo

  # AVERAGE_PRICES = {
  #   "St Kilda": {
  #     "property_type": {
  #       "house": {
  #         "1-bedroom":
  #         "2-bedroom":
  #         "3-bedroom":
  #         "4-bedroom":
  #         "5-bedroom":
  #       },
  #       "unit": {
  #         "1-bedroom":
  #         "2-bedroom":
  #         "3-bedroom":
  #         "4-bedroom":
  #         "5-bedroom":
  #       }
  #     }
  #   }
  # }
end
