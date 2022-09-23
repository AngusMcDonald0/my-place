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

# PHOTO 1
file = URI.open("https://i2.au.reastatic.net/1000x750-format=webp/f6391341464e80312ffe382f57af5693f35f812c4385741931022cc033b5525d/image.jpg")
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
  address: "25 Valley Parade, Glen Iris, VIC, 3146",
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
  address: "460 Glenferrie Road, Hawthorn, VIC, 3122",
  bedrooms: 2,
  suburb: "Hawthorn",
  state: "VIC",
  postcode: 3122,
  user: angus,
  property_type: "unit"
)

# PHOTO 1
file = URI.open("https://i2.au.reastatic.net/1000x750-format=webp/d227f6150f1f524e8f83b09d213c21d070d93a9529c9d5b5ce0632013afcc438/image.jpg")
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

transaction7 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022,9,8),
  amount: 300,
  description: "Rental Weekly Income"
)

transaction8 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022,9,15),
  amount: 300,
  description: "Rental Weekly Income"
)

transaction10 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022,9,22),
  amount: 300,
  description: "Rental Weekly Income"
)

transaction9 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expense",
  category: "Mortgage",
  date: DateTime.new(2022,9,12),
  amount: 500,
  description: "Mortgage Repayment"
)
# property two
7.times do
  transaction = Transaction.create!(
  property: property2,
  cash_flow_type: "Expense",
  category: category.sample,
  date: DateTime.new(2022, 9, rand(1..20)),
  amount: rand(100..200),
  description: description.sample
)
end

transaction20 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022, 9, 2),
  amount: 1000,
  description: "Rental Income"
)

transaction21 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022, 9, 9),
  amount: 1000,
  description: "Rental Income"
)

transaction23 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022, 9, 16),
  amount: 1000,
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
  category: "Rental Income",
  date: DateTime.new(2022, 9, 8),
  amount: 450,
  description: "Rental Income"
)

transaction31 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022, 9, 1),
  amount: 450,
  description: "Rental Income"
)

transaction34 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022, 9, 15),
  amount: 450,
  description: "Rental Income"
)

transaction36 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  category: "Rental Income",
  date: DateTime.new(2022, 9, 21),
  amount: 450,
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
