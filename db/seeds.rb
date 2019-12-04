# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i = 0
loop do
  User.create(name: "user_" + i.to_s, email: "user_" + i.to_s + "@gmail.com", password_digest: "password123")
  Dog.create( name: "dog_" + i.to_s, age: "10", gender: "Male", breed: "Random Breed", weight: "50", zipcode: (90000 + i).to_s)
  if i == 100
    break
  end
  i += 1
end