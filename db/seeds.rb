User.create!([
  {name: "Jack", email: "jack@email.com", password: "password", admin: false},
  {name: "/////", email: "beef@email.com", password: "password", admin: false},
  {name: "Test", email: "test@email.com", password: "password", admin: false}
])
Supplier.create!([
  {name: "Newbury Comics", email: "sales@newburycomics.com", phone_number: "617-555-9654"},
  {name: "Amoeba Records", email: "sales@amoeba.com", phone_number: "867-555-5309"},
  {name: "Warp Records", email: "sales@warp.co.uk", phone_number: "+44 55-6782-3456"}
])
Product.create!([
  {name: "Pinkerton", price: "25.0", description: "Pinkerton album by Weezer on cassette", inventory: nil, supplier_id: 2},
  {name: "Long Season", price: "45.0", description: "Long Season album by Fishmans on exclusive blue vinyl", inventory: nil, supplier_id: 3},
  {name: "Seas of Cheese", price: "30.0", description: "Seas of Cheese album by Primus on yellow vinyl", inventory: nil, supplier_id: 1},
  {name: "The Pod", price: "40.0", description: "The Pod by Ween on colored vinyl", inventory: nil, supplier_id: 1},
  {name: "The Mollusk", price: "40.0", description: "The Mollusk by Ween on colored vinyl", inventory: nil, supplier_id: 2}
])
Order.create!([
  {user_id: 1, subtotal: "11.99", tax: "0.67", total: "12.66", price: nil},
  {user_id: 2, subtotal: "10.5", tax: "0.5", total: "11.0", price: nil},
  {user_id: 1, subtotal: "21.0", tax: "1.0", total: "22.0", price: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, price: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, price: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, price: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, price: nil},
  {user_id: 1, subtotal: nil, tax: "6.75", total: "100.0", price: nil},
  {user_id: 1, subtotal: nil, tax: "9.0", total: "125.0", price: nil},
  {user_id: 1, subtotal: "125.0", tax: "11.25", total: "136.25", price: nil},
  {user_id: 1, subtotal: "225.0", tax: "20.25", total: "245.25", price: nil},
  {user_id: 1, subtotal: "80.0", tax: "7.2", total: "87.2", price: nil}
])
Image.create!([
  {url: "https://64.media.tumblr.com/51310aa3372b850d99c0e49ca4d39be0/92ce0dda783ffed0-a7/s1280x1920/355a3d09fd420f6531d6078022149b4adb408ba1.png", description: "pod pic 1", product_id: 1},
  {url: "https://www.turntablelab.com/cdn/shop/files/ween-thepod-fuscus1_1024x1024.jpg?v=1696348112", description: "pod pic 2", product_id: 1},
  {url: "https://assets.rootsvinylguide.com/pictures/primus-sailing-the-seas-of-cheese-yellow-vinyl-record-lp-les-claypool-south-park_3164724", description: "seas of cheese", product_id: 3}
])
CategoryProduct.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 2},
  {product_id: 2, category_id: 4},
  {product_id: 3, category_id: 1},
  {product_id: 4, category_id: 1},
  {product_id: 9, category_id: 1}
])
Category.create!([
  {name: "vinyl"},
  {name: "cassette"},
  {name: "CD"},
  {name: "damaged"},
  {name: "music"}
])
CartedProduct.create!([
  {user_id: 1, product_id: 1, status: "uncarted", order_id: nil, quantity: 2},
  {user_id: 1, product_id: 1, status: "purchased", order_id: 12, quantity: 2},
  {user_id: 1, product_id: 3, status: "removed", order_id: nil, quantity: 2}
])
