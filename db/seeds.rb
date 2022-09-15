Property.destroy_all && User.destroy_all if Rails.env.development?

angus = User.create!(
  email: "angus@test.com",
  password: "123456",
  password_confirmation: "123456"
)

# SEED CREATE
property1 = Property.create!(
  address: "2503 / 442-450 Elizabeth Street",
  bedrooms: 1,
  # bathrooms: 1,
  # garage: "1-car"
  # area: 50,
  # category: "Apartment",
  # suburb: "Melbourne",
  # state: "Victoria",
  # postcode: 3000
  user: angus,
  property_type: "unit"
)

# PHOTO 1
file = URI.open("https://www.thepinnaclelist.com/wp-content/uploads/2020/12/001-SHINE-Luxury-Apartment-Interior-Design-Dnipro-Ukraine-Svoya-Studio.jpeg")
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
  address: "5509 / 560 Lonsdale Street",
  # description: "Grand Space, Style and Sophistication with Panoramic Bay Views.",
  bedrooms: 2,
  # bathrooms: 2,
  # garage: "1-car"
  # area: "N/A",
  # category: "Apartment",
  # suburb: "Melbourne",
  # state: "Victoria",
  # postcode: 3000
  user: angus,
  # price: 780000,
  property_type: "house"
)

# PHOTO 1
file = URI.open("https://www.realestate.com.au/blog/images/550x330-fit,progressive/2016/05/HOUSE-1-550.jpg")
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
  address: "1703 / 161 Clarence Street",
  bedrooms: 1,
  # bathrooms: 1,
  # garage: "N/A",
  # area: 48,
  # category: "Apartment",
  # suburb: "Sydney",
  # state: "New South Wales",
  # postcode: 2000
  user: angus,
  # price: 1000000,
  property_type: "unit"
)

# PHOTO 1
file = URI.open("https://i.pinimg.com/originals/24/e8/f0/24e8f08ba83e34213572acbdb1061bf0.jpg")
property3.photo.attach(io: file, filename: property3.address)
# PHOTO 2
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/1daa0a8bb756433bf553ed0d7f9c67c341696023195bc695ab3ba852efaae157/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 3
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/33b8c9af1fbc1c3b8f6b6191bbd5868a3cf49e5b59eff97fb0a5d40eaa13374c/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)

puts "#{property3.address} seeded"


# properties = Property.create!(
#   address: "34 / 180 Stirling Street",
#   # description: "Luxury 1x1x1 in Zenith Apartment.",
#   bedrooms: 1,
#   # bathrooms: 1,
#   # garage: "1-car",
#   # area: 50,
#   # category: "Apartment",
#   # suburb: "Perth",
#   # state: "Western Australia",
#   # postcode: 6000
#   user: angus,
#   # price: 675000,
#   property_type: "house"
# )

# # PHOTO 1
# file = URI.open("https://thenewdaily.com.au/wp-content/uploads/2018/05/1526025572-WORD9699_Crown-Sydney_IN11_Premium-Apartment_Living.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 2
# # file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/34c210f2444e9630e975a05f82bd65c49d456e84a74571415a1a67e395255782/image.jpg")
# # properties.photo.attach(io: file, filename: properties.address)
# # # PHOTO 3
# # file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/95550bf324b1011d1f188243d35b976480b6951c9958ccf3450ba50fa6322977/image.jpg")
# # properties.photo.attach(io: file, filename: properties.address)

# puts "#{properties.address} seeded"



# properties = Property.create!(
#   address: "843 Cambridge Road",
#   # description: "Space and convenience in magnificent semi-rural property.",
#   bedrooms: 5,
#   # bathrooms: 3,
#   # garage: "4-car",
#   # area: 2766,
#   # category: "House",
#   # suburb: "Cambridge",
#   # state: "Tasmania",
#   # postcode: 7170
#   user: angus,
#   # price: 1380000
#   property_type: "unit"
# )

# # PHOTO 1
# file = URI.open("http://www.realestate2buy.com/home/domains/www.realestate2buy.com/public_html/wp-content/uploads//2016/11/Apartment-Aus-770x386.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 2
# # file = URI.open("https://i2.au.reastatic.net/1840x1040-resize,r=33,g=40,b=46/6de3cf593a6afa43c4ef9cc06173109e75b213ce528b65f9445ea8e74ea2aace/image.jpg")
# # properties.photo.attach(io: file, filename: properties.address)
# # # PHOTO 3
# # file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/ccab3ff801521c4359f1c846d013e4186b752ac03986a82c8e0c384dba5489c9/image.jpg")
# # properties.photo.attach(io: file, filename: properties.address)

# puts "#{properties.address} seeded"


transaction1 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,8,13),
  category: "Rental Income",
  amount: 2000,
  description: "August 2020 Monthly Rental Income",
)

transaction2 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,9,13),
  category: "Rental Income",
  amount: 2000,
  description: "September 2020 Monthly Rental Income",
)
transaction3 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,10,13),
  category: "Rental Income",
  amount: 2000,
  description: "October 2020 Monthly Rental Income",
)
transaction4 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,11,13),
  category: "Rental Income",
  amount: 2000,
  description: "November 2020 Monthly Rental Income"
)
transaction5 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,12,13),
  category: "Rental Income",
  amount: 2000,
  description: "December 2020 Monthly Rental Income",
)
transaction6 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,1,13),
  category: "Rental Income",
  amount: 2000,
  description: "January 2021 Monthly Rental Income",
)
transaction7 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,2,13),
  category: "Rental Income",
  amount: 2000,
  description: "February 2021 Monthly Rental Income"
)
transaction8 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,8,13),
  category: "Rental Income",
  amount: 2000,
  description: "August 2021 Monthly Rental Income"
)
transaction9 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,9,13),
  category: "Rental Income",
  amount: 2000,
  description: "September 2021 Monthly Rental Income"
)
transaction10 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,10,13),
  category: "Rental Income",
  amount: 2000,
  description: "October 2021 Monthly Rental Income"
)
transaction11 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,11,13),
  category: "Rental Income",
  amount: 2000,
  description: "November 2021 Monthly Rental Income"
)
transaction12 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,12,13),
  category: "Rental Income",
  amount: 2000,
  description: "December 2021 Monthly Rental Income"
)
transaction13 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2022,1,13),
  category: "Rental Income",
  amount: 2000,
  description: "January 2022 Monthly Rental Income"
)
transaction14 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2022,2,13),
  category: "Rental Income",
  amount: 2000,
  description: "February 2022 Monthly Rental Income"
)
transaction15 = Transaction.create!(
  property: property1,
  cash_flow_type: "Revenue",
  date: DateTime.new(2022,9,13),
  category: "Rental Income",
  amount: 2000,
  description: "September 2022 Monthly Rental Income",
)
transaction16 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expenses",
  date: DateTime.new(2022,9,13),
  category: "Maintenance",
  amount: 500,
  description: "September 2022 Payed Plumber for Fixing the Toilet"
)
transaction17 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expenses",
  date: DateTime.new(2022,9,13),
  category: "Mortgage",
  amount: 1550,
  description: "September 2022 Mortgage Payment",
)
transaction18 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expenses",
  date: DateTime.new(2022,9,13),
  category: "Maintenance",
  amount: 75,
  description: "September 2022 Lightbulb Change",
)

transaction19 = Transaction.create!(
  property: property1,
  cash_flow_type: "Expenses",
  date: DateTime.new(2022,9,13),
  category: "Maintenance",
  amount: 200,
  description: "September 2022 Annual Smoke Alarm Change",
)

transaction21 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,8,7),
  category: "Rental Income",
  amount: 2300,
  description: "August 2020 Monthly Rental Income",
)

transaction22 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,9,7),
  category: "Rental Income",
  amount: 2400,
  description: "September 2020 Monthly Rental Income",
)
transaction23 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,10,7),
  category: "Rental Income",
  amount: 2400,
  description: "October 2020 Monthly Rental Income",
)
transaction24 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,11,7),
  category: "Rental Income",
  amount: 2400,
  description: "November 2020 Monthly Rental Income"
)
transaction25 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,12,7),
  category: "Rental Income",
  amount: 2400,
  description: "December 2020 Monthly Rental Income",
)
transaction26 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,1,7),
  category: "Rental Income",
  amount: 2400,
  description: "January 2021 Monthly Rental Income",
)
transaction27 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,2,7),
  category: "Rental Income",
  amount: 2400,
  description: "February 2021 Monthly Rental Income"
)
transaction28 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,8,7),
  category: "Rental Income",
  amount: 2400,
  description: "August 2021 Monthly Rental Income"
)
transaction29 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,9,7),
  category: "Rental Income",
  amount: 2400,
  description: "September 2021 Monthly Rental Income"
)
transaction30 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,10,7),
  category: "Rental Income",
  amount: 2400,
  description: "October 2021 Monthly Rental Income"
)
transaction31 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,11,7),
  category: "Rental Income",
  amount: 2400,
  description: "November 2021 Monthly Rental Income"
)
transaction32 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,12,7),
  category: "Rental Income",
  amount: 2400,
  description: "December 2021 Monthly Rental Income"
)
transaction33 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2022,1,7),
  category: "Rental Income",
  amount: 2400,
  description: "January 2022 Monthly Rental Income"
)
transaction34 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2022,2,7),
  category: "Rental Income",
  amount: 2400,
  description: "February 2022 Monthly Rental Income"
)
transaction35 = Transaction.create!(
  property: property2,
  cash_flow_type: "Revenue",
  date: DateTime.new(2022,9,7),
  category: "Rental Income",
  amount: 2400,
  description: "September 2022 Monthly Rental Income",
)
transaction36 = Transaction.create!(
  property: property2,
  cash_flow_type: "Expenses",
  date: DateTime.new(2020,8,17),
  category: "Maintenance",
  amount: 300,
  description: "August 2020 Payed Plumber for Fixing the Toilet"
)
transaction37 = Transaction.create!(
  property: property2,
  cash_flow_type: "Expenses",
  date: DateTime.new(2020,12,29),
  category: "Maintenance",
  amount: 75,
  description: "December 2020 Lightbulb Change",
)
transaction38 = Transaction.create!(
  property: property2,
  cash_flow_type: "Expenses",
  date: DateTime.new(2020,9,13),
  category: "Maintenance",
  amount: 200,
  description: "September 2022 Annual Smoke Alarm Change",
)

transaction41 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,8,9),
  category: "Rental Income",
  amount: 2250,
  description: "August 2020 Monthly Rental Income",
)

transaction42 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,9,9),
  category: "Rental Income",
  amount: 2250,
  description: "September 2020 Monthly Rental Income",
)
transaction43 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,10,9),
  category: "Rental Income",
  amount: 2250,
  description: "October 2020 Monthly Rental Income",
)
transaction44 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,11,9),
  category: "Rental Income",
  amount: 2250,
  description: "November 2020 Monthly Rental Income"
)
transaction45 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2020,12,9),
  category: "Rental Income",
  amount: 2250,
  description: "December 2020 Monthly Rental Income",
)
transaction46 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,1,9),
  category: "Rental Income",
  amount: 2250,
  description: "January 2021 Monthly Rental Income",
)
transaction47 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,2,9),
  category: "Rental Income",
  amount: 2250,
  description: "February 2021 Monthly Rental Income"
)
transaction48 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,8,9),
  category: "Rental Income",
  amount: 2250,
  description: "August 2021 Monthly Rental Income"
)
transaction49 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,9,9),
  category: "Rental Income",
  amount: 2250,
  description: "September 2021 Monthly Rental Income"
)
transaction50 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,10,9),
  category: "Rental Income",
  amount: 2250,
  description: "October 2021 Monthly Rental Income"
)
transaction51 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,11,9),
  category: "Rental Income",
  amount: 2250,
  description: "November 2021 Monthly Rental Income"
)
transaction52 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2021,12,9),
  category: "Rental Income",
  amount: 2250,
  description: "December 2021 Monthly Rental Income"
)
transaction53 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2022,1,9),
  category: "Rental Income",
  amount: 2250,
  description: "January 2022 Monthly Rental Income"
)
transaction54 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2022,2,9),
  category: "Rental Income",
  amount: 2250,
  description: "February 2022 Monthly Rental Income"
)
transaction55 = Transaction.create!(
  property: property3,
  cash_flow_type: "Revenue",
  date: DateTime.new(2022,9,9),
  category: "Rental Income",
  amount: 2250,
  description: "September 2022 Monthly Rental Income",
)
transaction56 = Transaction.create!(
  property: property3,
  cash_flow_type: "Expenses",
  date: DateTime.new(2020,8,19),
  category: "Maintenance",
  amount: 320,
  description: "August 2020 Payed Plumber for Fixing the Toilet"
)
transaction57 = Transaction.create!(
  property: property3,
  cash_flow_type: "Expenses",
  date: DateTime.new(2020,12,22),
  category: "Maintenance",
  amount: 65,
  description: "December 2020 Lightbulb Change",
)
transaction58 = Transaction.create!(
  property: property3,
  cash_flow_type: "Expenses",
  date: DateTime.new(2022,9,13),
  category: "Maintenance",
  amount: 200,
  description: "September 2022 Annual Smoke Alarm Change",
)
