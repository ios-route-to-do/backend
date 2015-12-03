# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'creating categories'
categories = Category.create([{name: 'Nightlife', image_url:'https://upload.wikimedia.org/wikipedia/commons/8/8b/Nightlife-in-Vancouver.jpg'}, {name: 'Exploring', image_url:'https://c2.staticflickr.com/6/5345/9826378233_d1843cd9fa_b.jpg'}])
