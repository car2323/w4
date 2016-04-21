# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user_row1=User.create(name: "Carlos1", email: "ccardo1@hotmail.com")
user_row2=User.create(name: "Carlos2", email: "ccardo2@hotmail.com")
user_row3=User.create(name: "Carlos3", email: "ccardo3@hotmail.com")
user_row4=User.create(name: "Carlos4", email: "ccardo4@hotmail.com")



product_row1=Product.create(user: user_row1, title: "titulo1", description: "description1", deadline:Time.now + 56.hours)
product_row2=Product.create(user: user_row2, title: "titulo2", description: "description2", deadline:Time.now + 100.hours)
product_row3=Product.create(user: user_row3, title: "titulo3", description: "description3", deadline:Time.now + 80.hours)
product_row4=Product.create(user: user_row1, title: "titulo4", description: "description4", deadline:Time.now + 23.hours)
product_row5=Product.create(user: user_row2, title: "titulo5", description: "description5", deadline:Time.now + 30.hours)
product_row6=Product.create(user: user_row1, title: "titulo6", description: "description6", deadline:Time.now + 40.hours)



Bid.create(user: user_row1, product: product_row1, amount: 300.25)
Bid.create(user: user_row2, product: product_row2, amount: 6000.00)
Bid.create(user: user_row3, product: product_row3, amount: 350.25)
Bid.create(user: user_row1, product: product_row4, amount: 80.00)
Bid.create(user: user_row2, product: product_row5, amount: 1250.45)
Bid.create(user: user_row1, product: product_row6, amount: 100.75)
