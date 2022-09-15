Property.destroy_all && User.destroy_all if Rails.env.development?

angus = User.create!(
  email: "angus@test.com",
  password: "123456",
  password_confirmation: "123456"
)

# SEED CREATE
properties = Property.create!(
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
file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/cfe4360bc60f599fe538163f1cf591a120a8078dd6f1359b69b1f3177ab540fb/image.jpg")
properties.photo.attach(io: file, filename: properties.address)
# PHOTO 2
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/ac86f8eb38800c1868abb13cbddc0a19a2164c3f1470feb918f5be9fd7976a07/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 3
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/3c9eb34377b5830fe2e56c4a2e7c7ddde1a79c2d2b786b98e01fcd830b6f4295/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)


puts "#{properties.address} seeded"

# SEED CREATE
properties = Property.create!(
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
file = URI.open("https://i2.au.reastatic.net/800x600-format=webp/70a422b2f7b4ffd9f10535390c308995585fada98962463c931dc14ed0cd46fd/image.jpg")
properties.photo.attach(io: file, filename: properties.address)
# PHOTO 2
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/d8ae76635fe5e9f7785c4fa858c92171e78d6b441a7590a78576d9b50296edcf/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 3
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/49ae6d73b7c6d797482f24164f4b9bf7d525a8bbbfbd921e7d1769e818c181cc/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)


puts "#{properties.address} seeded"

# SEED CREATE
properties = Property.create!(
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
file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/a20ba31fa4ebc2b26922e13511f0d08e5388cd69f8300c5f3f23f2b58a92e18e/image.jpg")
properties.photo.attach(io: file, filename: properties.address)
# PHOTO 2
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/1daa0a8bb756433bf553ed0d7f9c67c341696023195bc695ab3ba852efaae157/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 3
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/33b8c9af1fbc1c3b8f6b6191bbd5868a3cf49e5b59eff97fb0a5d40eaa13374c/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)

puts "#{properties.address} seeded"

# SEED CREATE
properties = Property.create!(
  address: "34 / 180 Stirling Street",
  # description: "Luxury 1x1x1 in Zenith Apartment.",
  bedrooms: 1,
  # bathrooms: 1,
  # garage: "1-car",
  # area: 50,
  # category: "Apartment",
  # suburb: "Perth",
  # state: "Western Australia",
  # postcode: 6000
  user: angus,
  # price: 675000,
  property_type: "house"
)

# PHOTO 1
file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/94a004f1b4918ca8d185b47e365c1f36be861b19653fa0bd6991d5329ce6bfba/image.jpg")
properties.photo.attach(io: file, filename: properties.address)
# PHOTO 2
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/34c210f2444e9630e975a05f82bd65c49d456e84a74571415a1a67e395255782/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 3
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/95550bf324b1011d1f188243d35b976480b6951c9958ccf3450ba50fa6322977/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)

puts "#{properties.address} seeded"



properties = Property.create!(
  address: "843 Cambridge Road",
  # description: "Space and convenience in magnificent semi-rural property.",
  bedrooms: 5,
  # bathrooms: 3,
  # garage: "4-car",
  # area: 2766,
  # category: "House",
  # suburb: "Cambridge",
  # state: "Tasmania",
  # postcode: 7170
  user: angus,
  # price: 1380000
  property_type: "unit"
)

# PHOTO 1
file = URI.open("https://i2.au.reastatic.net/800x600-format=webp/be4e5c99a84c5a38482c04bfdec689769522f68dd575dc1505b76d9ed2f9835b/image.jpg")
properties.photo.attach(io: file, filename: properties.address)
# PHOTO 2
# file = URI.open("https://i2.au.reastatic.net/1840x1040-resize,r=33,g=40,b=46/6de3cf593a6afa43c4ef9cc06173109e75b213ce528b65f9445ea8e74ea2aace/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)
# # PHOTO 3
# file = URI.open("https://i2.au.reastatic.net/800x600-resize,extend,r=33,g=40,b=46/ccab3ff801521c4359f1c846d013e4186b752ac03986a82c8e0c384dba5489c9/image.jpg")
# properties.photo.attach(io: file, filename: properties.address)

puts "#{properties.address} seeded"
