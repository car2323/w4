# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



concert_row1=Concert.create(artist: "Carlos1", venue: "AAA", city: "miami", date:Time.now + 10.days, price: 150.00, description: "descriptionconcert1")
concert_row2=Concert.create(artist: "Bon Jovi2", venue: "Madison Square Garden", city: "NY", date:Time.now + 10.days, price: 120.00, description: "descriptionconcert2")
concert_row3=Concert.create(artist: "Luis Migue3", venue: "L.Knigh Center", city: "miami", date:Time.now + 5.days, price: 100.00, description: "descriptionconcert3")
concert_row4=Concert.create(artist: "Michael Jackson4", venue: "Staples Center", city: "L.A.", date:Time.now + 10.hours, price: 90.00, description: "descriptionconcert4")

Comment.create(concert: concert_row1, comment_text: "Comment1 concert")
Comment.create(concert: concert_row2, comment_text: "Comment2 concert")
Comment.create(concert: concert_row3, comment_text: "Comment3 concert")
Comment.create(concert: concert_row4, comment_text: "Comment4 concert")