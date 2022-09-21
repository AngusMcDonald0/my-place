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
  address: "450 Elizabeth Street",
  bedrooms: 2,
  suburb: "Melbourne",
  state: "VIC",
  postcode: "3000",
  user: angus,
  property_type: "unit"
)

# PHOTO 1
file = URI.open("https://i2.au.reastatic.net/1000x750-format=webp/542d1fa930dd7ee3a35bbbb0346190edb6032ee3210a9b9a5d074479eba10d0c/image.jpg")
property1.photo.attach(io: file, filename: property1.address)
# PHOTO 2
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/ac86f8eb38800c1868abb13cbddc0a19a2164c3f1470feb918f5be9fd7976a07/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 3
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/3c9eb34377b5830fe2e56c4a2e7c7ddde1a79c2d2b786b98e01fcd830b6f4295/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)


puts "#{property1.address} seeded"

# SEED CREATE
property2 = Property.create!(
  address: "25 Valley Parade",
  bedrooms: 4,
  suburb: "Glen Iris",
  state: "VIC",
  postcode: "3146",
  user: angus,
  property_type: "house"
)

# PHOTO 1
file = URI.open("https://i2.au.reastatic.net/1000x750-format=webp/8c6e3249320e8a8a1655d5e21065f42802fa1b7fb9e0ce7ab6c546aa682434c9/image.jpg")
property2.photo.attach(io: file, filename: property2.address)
# PHOTO 2
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/d8ae76635fe5e9f7785c4fa858c92171e78d6b441a7590a78576d9b50296edcf/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 3
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/49ae6d73b7c6d797482f24164f4b9bf7d525a8bbbfbd921e7d1769e818c181cc/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)


puts "#{property2.address} seeded"

# SEED CREATE
property3 = Property.create!(
  address: "61 Stawell Street",
  bedrooms: 2,
  suburb: "Richmond",
  state: "VIC",
  postcode: 3121,
  user: angus,
  property_type: "unit"
)

# PHOTO 1
file = URI.open("https://i2.au.reastatic.net/1000x750-format=webp/c2d47097b4bd822aa16b9ca5592f0c2ce0d18e3383228f3f97ff07eb45763321/image.jpg")
property3.photo.attach(io: file, filename: property3.address)
# PHOTO 2
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/1daa0a8bb756433bf553ed0d7f9c67c341696023195bc695ab3ba852efaae157/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 3
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/33b8c9af1fbc1c3b8f6b6191bbd5868a3cf49e5b59eff97fb0a5d40eaa13374c/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)

puts "#{property3.address} seeded"

category = ["Maintenance", "Utility", "Mortgage"]
description = ["Electrician", "Major Repairs", "Mortgage Repayment", "Rates", "Water"]


# property one
  transaction1 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Maintenance",
  date: DateTime.new(2022, 9, 1),
  amount: 300,
  description: "Electrical Work"

)

transaction2 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Maintenance",
  date: DateTime.new(2022, 9, 3),
  amount: 1000,
  description: "Massive Water Leak"
)

transaction3 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Maintenance",
  date: DateTime.new(2022,9,3),
  amount: 500,
  description: "Plaster Work"
)

transaction4 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Maintenance",
  date: DateTime.new(2022,9,5),
  amount: 300,
  description: "Further Plaster Work"
)

transaction5 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Utility",
  date: DateTime.new(2022,9,10),
  amount: 200,
  description: "Body Corp Fees"
)

transaction6 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022,9,1),
  amount: 300,
  description: "Rental Weekly Income"
)

transaction6 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022,9,8),
  amount: 300,
  description: "Rental Weekly Income"
)

transaction7 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Mortgage",
  date: DateTime.new(2022,9,12),
  amount: 500,
  description: "Mortgage Repayment"
)

# property two
5.times do
  transaction = Transaction.create!(
  property: property2,
  cash_flow_type: "Expense",
  category: category.sample,
  date: DateTime.new(2022, 9, rand(1..15)),
  amount: rand(100..200),
  description: description.sample
)
end

transaction20 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  category: category.sample,
  date: DateTime.new(2022, 9, 2),
  amount: 1300,
  description: "Rental Income"
)

transaction21 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  category: category.sample,
  date: DateTime.new(2022, 9, 9),
  amount: 1300,
  description: "Rental Income"
)

transaction22 = Transaction.create!(
  property: property2,
  cash_flow_type: "Expense",
  category: "Mortgage",
  date: DateTime.new(2022, 9, 13),
  amount: 200,
  description: "Mortgage Repayment"
)

# property three
5.times do
  transaction = Transaction.create!(
  property: property3,
  cash_flow_type: "Expense",
  category: category.sample,
  date: DateTime.new(2022, 9, rand(1..15)),
  amount: rand(50..300),
  description: description.sample
)
end

transaction30 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  category: category.sample,
  date: DateTime.new(2022, 9, 1),
  amount: 800,
  description: "Rental Income"
)

transaction31 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  category: category.sample,
  date: DateTime.new(2022, 9, 1),
  amount: 800,
  description: "Rental Income"
)

transaction32 = Transaction.create!(
  property: property3,
  cash_flow_type: "Expense",
  category: "Mortgage",
  date: DateTime.new(2022, 9, 12),
  amount: 100,
  description: "Mortgage Repayment"
)

# transaction2 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,8,14),
#   category: "Rental Income",
#   amount: 2000,
#   description: "August 2022 Monthly Rental Income",
# )
# transaction3 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,10,12),
#   category: "Rental Income",
#   amount: 2000,
#   description: "October 2022 Monthly Rental Income",
# )
# transaction4 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,11,11),
#   category: "Rental Income",
#   amount: 2000,
#   description: "November 2020 Monthly Rental Income"
# )
# transaction5 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2020,12,19),
#   category: "Rental Income",
#   amount: 2000,
#   description: "December 2020 Monthly Rental Income",
# )
# transaction6 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,1,17),
#   category: "Rental Income",
#   amount: 2000,
#   description: "January 2021 Monthly Rental Income",
# )
# transaction7 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,2,16),
#   category: "Rental Income",
#   amount: 2000,
#   description: "February 2021 Monthly Rental Income"
# )
# transaction8 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,8,18),
#   category: "Rental Income",
#   amount: 2000,
#   description: "August 2021 Monthly Rental Income"
# )
# transaction9 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,9,19),
#   category: "Rental Income",
#   amount: 2000,
#   description: "September 2021 Monthly Rental Income"
# )
# transaction10 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,10,23),
#   category: "Rental Income",
#   amount: 2000,
#   description: "October 2021 Monthly Rental Income"
# )
# transaction11 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,11,11),
#   category: "Rental Income",
#   amount: 2000,
#   description: "November 2021 Monthly Rental Income"
# )
# transaction12 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,12,9),
#   category: "Rental Income",
#   amount: 2000,
#   description: "December 2021 Monthly Rental Income"
# )
# transaction13 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,1,13),
#   category: "Rental Income",
#   amount: 2000,
#   description: "January 2022 Monthly Rental Income"
# )
# transaction14 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,2,12),
#   category: "Rental Income",
#   amount: 2000,
#   description: "February 2022 Monthly Rental Income"
# )
# transaction15 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,9,14),
#   category: "Rental Income",
#   amount: 2000,
#   description: "September 2022 Monthly Rental Income",
# )
# transaction16 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Expenses",
#   date: DateTime.new(2022,9,13),
#   category: "Maintenance",
#   amount: 500,
#   description: "September 2022 Payed Plumber for Fixing the Toilet"
# )
# transaction17 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Expenses",
#   date: DateTime.new(2022,9,13),
#   category: "Mortgage",
#   amount: 1550,
#   description: "September 2022 Mortgage Payment",
# )
# transaction18 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Expenses",
#   date: DateTime.new(2022,9,13),
#   category: "Maintenance",
#   amount: 75,
#   description: "September 2022 Lightbulb Change",
# )

# transaction19 = Transaction.create!(
#   property: property1,
#   cash_flow_type: "Expenses",
#   date: DateTime.new(2022,9,13),
#   category: "Maintenance",
#   amount: 200,
#   description: "September 2022 Annual Smoke Alarm Change",
# )

# transaction21 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,7,7),
#   category: "Rental Income",
#   amount: 2300,
#   description: "July 2022 Monthly Rental Income",
# )

# transaction22 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,8,6),
#   category: "Rental Income",
#   amount: 2400,
#   description: "August 2020 Monthly Rental Income",
# )
# transaction23 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,10,7),
#   category: "Rental Income",
#   amount: 2400,
#   description: "October 2022 Monthly Rental Income",
# )
# transaction24 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2020,11,5),
#   category: "Rental Income",
#   amount: 2400,
#   description: "November 2020 Monthly Rental Income"
# )
# transaction25 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2020,12,11),
#   category: "Rental Income",
#   amount: 2400,
#   description: "December 2020 Monthly Rental Income",
# )
# transaction26 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,1,7),
#   category: "Rental Income",
#   amount: 2400,
#   description: "January 2021 Monthly Rental Income",
# )
# transaction27 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,2,12),
#   category: "Rental Income",
#   amount: 2400,
#   description: "February 2021 Monthly Rental Income"
# )
# transaction28 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,8,10),
#   category: "Rental Income",
#   amount: 2400,
#   description: "August 2021 Monthly Rental Income"
# )
# transaction29 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,9,13),
#   category: "Rental Income",
#   amount: 2400,
#   description: "September 2021 Monthly Rental Income"
# )
# transaction30 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,10,14),
#   category: "Rental Income",
#   amount: 2400,
#   description: "October 2021 Monthly Rental Income"
# )
# transaction31 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,11,13),
#   category: "Rental Income",
#   amount: 2400,
#   description: "November 2021 Monthly Rental Income"
# )
# transaction32 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,12,8),
#   category: "Rental Income",
#   amount: 2400,
#   description: "December 2021 Monthly Rental Income"
# )
# transaction33 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,1,9),
#   category: "Rental Income",
#   amount: 2400,
#   description: "January 2022 Monthly Rental Income"
# )
# transaction34 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,2,8),
#   category: "Rental Income",
#   amount: 2400,
#   description: "February 2022 Monthly Rental Income"
# )
# transaction35 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,9,9),
#   category: "Rental Income",
#   amount: 2400,
#   description: "September 2022 Monthly Rental Income",
# )
# transaction36 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Expenses",
#   date: DateTime.new(2020,8,17),
#   category: "Maintenance",
#   amount: 300,
#   description: "August 2020 Payed Plumber for Fixing the Toilet"
# )
# transaction37 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Expenses",
#   date: DateTime.new(2020,12,29),
#   category: "Maintenance",
#   amount: 75,
#   description: "December 2020 Lightbulb Change",
# )
# transaction38 = Transaction.create!(
#   property: property2,
#   cash_flow_type: "Expenses",
#   date: DateTime.new(2020,9,13),
#   category: "Maintenance",
#   amount: 200,
#   description: "September 2020 Annual Smoke Alarm Change",
# )

# transaction41 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,7,30),
#   category: "Rental Income",
#   amount: 2250,
#   description: "July 2022 Monthly Rental Income",
# )

# transaction42 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2020,8,29),
#   category: "Rental Income",
#   amount: 2250,
#   description: "August 2022 Monthly Rental Income",
# )
# transaction43 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,10,28),
#   category: "Rental Income",
#   amount: 2250,
#   description: "October 2022 Monthly Rental Income",
# )
# transaction44 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2020,11,27),
#   category: "Rental Income",
#   amount: 2250,
#   description: "November 2020 Monthly Rental Income"
# )
# transaction45 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2020,12,25),
#   category: "Rental Income",
#   amount: 2250,
#   description: "December 2020 Monthly Rental Income",
# )
# transaction46 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,1,24),
#   category: "Rental Income",
#   amount: 2250,
#   description: "January 2021 Monthly Rental Income",
# )
# transaction47 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,2,28),
#   category: "Rental Income",
#   amount: 2250,
#   description: "February 2021 Monthly Rental Income"
# )
# transaction48 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,8,28),
#   category: "Rental Income",
#   amount: 2250,
#   description: "August 2021 Monthly Rental Income"
# )
# transaction49 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,9,30),
#   category: "Rental Income",
#   amount: 2250,
#   description: "September 2021 Monthly Rental Income"
# )
# transaction50 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,10,26),
#   category: "Rental Income",
#   amount: 2250,
#   description: "October 2021 Monthly Rental Income"
# )
# transaction51 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,11,29),
#   category: "Rental Income",
#   amount: 2250,
#   description: "November 2021 Monthly Rental Income"
# )
# transaction52 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2021,12,28),
#   category: "Rental Income",
#   amount: 2250,
#   description: "December 2021 Monthly Rental Income"
# )
# transaction53 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,1,25),
#   category: "Rental Income",
#   amount: 2250,
#   description: "January 2022 Monthly Rental Income"
# )
# transaction54 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,2,28),
#   category: "Rental Income",
#   amount: 2250,
#   description: "February 2022 Monthly Rental Income"
# )
# transaction55 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Revenue",
#   date: DateTime.new(2022,9,29),
#   category: "Rental Income",
#   amount: 2250,
#   description: "September 2022 Monthly Rental Income",
# )
# transaction56 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Expenses",
#   date: DateTime.new(2020,8,19),
#   category: "Maintenance",
#   amount: 320,
#   description: "August 2020 Payed Plumber for Fixing the Toilet"
# )
# transaction57 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Expenses",
#   date: DateTime.new(2020,12,22),
#   category: "Maintenance",
#   amount: 65,
#   description: "December 2020 Lightbulb Change",
# )
# transaction58 = Transaction.create!(
#   property: property3,
#   cash_flow_type: "Expenses",
#   date: DateTime.new(2022,9,13),
#   category: "Maintenance",
#   amount: 200,
#   description: "September 2022 Annual Smoke Alarm Change",
# )
