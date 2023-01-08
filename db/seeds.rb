Transaction.destroy_all && Property.destroy_all && User.destroy_all if Rails.env.development?
require "uri"

angus = User.create!(
  email: "angus@test.com",
  password: "123456",
  password_confirmation: "123456",
  first_name: "Angus",
  last_name: "Mcdonald"
)

my_photo = URI.open("https://avatars.githubusercontent.com/u/108924749?v=4")
angus.avatar.attach(io: my_photo, filename: "angus")

# SEED CREATE
property1 = Property.create!(
  address: "32 Liddiard St, Hawthorn, VIC, 3122",
  bedrooms: 2,
  suburb: "Hawthorn",
  state: "VIC",
  postcode: "3122",
  user: angus,
  property_type: "unit"
)
puts "#{property1.address} seeded"

# SEED CREATE
property2 = Property.create!(
  address: "25 Valley Parade, Glen Iris, VIC, 3146",
  bedrooms: 4,
  suburb: "Glen Iris",
  state: "VIC",
  postcode: "3146",
  user: angus,
  property_type: "house"
)


puts "#{property2.address} seeded"

# SEED CREATE
property3 = Property.create!(
  address: "460 Glenferrie Road, Hawthorn, VIC, 3122",
  bedrooms: 2,
  suburb: "Hawthorn",
  state: "VIC",
  postcode: 3122,
  user: angus,
  property_type: "unit"
)

puts "#{property3.address} seeded"

category = ["Maintenance", "Utility", "Mortgage"]
description = ["Electrician", "Major Repairs", "Mortgage Repayment", "Rates", "Water"]

# property one
  transaction1 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Maintenance",
  date: DateTime.new(2023, 1, 1),
  amount: 300,
  description: "Electrical Work"
)

transaction2 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Maintenance",
  date: DateTime.new(2023, 1, 3),
  amount: 1000,
  description: "Massive Water Leak"
)

transaction3 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Maintenance",
  date: DateTime.new(2023, 1, 3),
  amount: 500,
  description: "Plaster Work"
)

transaction4 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Maintenance",
  date: DateTime.new(2023, 1, 5),
  amount: 300,
  description: "Further Plaster Work"
)

transaction5 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Utility",
  date: DateTime.new(2023, 1, 8),
  amount: 200,
  description: "Body Corp Fees"
)

transaction6 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023, 1, 1),
  amount: 300,
  description: "Rental Weekly Income"
)

transaction7 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023, 1, 8),
  amount: 300,
  description: "Rental Weekly Income"
)

transaction8 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023, 1, 7),
  amount: 300,
  description: "Rental Weekly Income"
)

transaction10 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023,1,7),
  amount: 300,
  description: "Rental Weekly Income"
)

transaction9 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Mortgage",
  date: DateTime.new(2023,1,7),
  amount: 500,
  description: "Mortgage Repayment"
)
# property two
7.times do
  transaction = Transaction.create!(
  property: property2,
  cash_flow_type: "Expense",
  category: category.sample,
  date: DateTime.new(2023, 1, rand(1..7)),
  amount: rand(100..200),
  description: description.sample
)
end

transaction20 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023, 1, 2),
  amount: 1000,
  description: "Rental Income"
)

transaction21 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023, 1, 7),
  amount: 1000,
  description: "Rental Income"
)

transaction23 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023, 1, 7),
  amount: 1000,
  description: "Rental Income"
)

transaction22 = Transaction.create!(
  property: property2,
  cash_flow_type: "Expense",
  category: "Mortgage",
  date: DateTime.new(2023, 1, 7),
  amount: 200,
  description: "Mortgage Repayment"
)

# property three
5.times do
  transaction = Transaction.create!(
  property: property3,
  cash_flow_type: "Expense",
  category: category.sample,
  date: DateTime.new(2023, 1, rand(1..7)),
  amount: rand(50..300),
  description: description.sample
)
end

transaction30 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023, 1, 7),
  amount: 450,
  description: "Rental Income"
)

transaction31 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023, 1, 1),
  amount: 450,
  description: "Rental Income"
)

transaction34 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023, 1, 7),
  amount: 450,
  description: "Rental Income"
)

transaction36 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2023, 1, 7),
  amount: 450,
  description: "Rental Income"
)

transaction32 = Transaction.create!(
  property: property3,
  cash_flow_type: "Expense",
  category: "Mortgage",
  date: DateTime.new(2023, 1, 6),
  amount: 100,
  description: "Mortgage Repayment"
)
