# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "#{first_name}_#{last_name}@mail.com"
  password = "blablabli"
  User.create(email: email, password: password)
end

puts "-------------------- Users table --------------------"
tp User.all

30.times do
  title = Faker::Company.bs.capitalize
  content = Faker::Lorem.paragraph
  author = User.all.sample
  visibility = "Public"
  Article.create(title: title, content: content, author: author, visibility: visibility)
end
  
puts "-------------------- Users table --------------------"
tp Article.all

