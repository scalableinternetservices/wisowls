# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users_data = [
  [ "Ali", "ali@gmail.com", "password" ],
  [ "Alley", "alley@gmail.com", "password" ],
  [ "Beth", "beth@gmail.com", "password" ],
  [ "Caren", "caren@gmail.com", "password" ],
  [ "Danny", "dani@gmail.com", "password" ],
  [ "Emad", "emad@gmail.com", "password" ],
  [ "Fifi", "fifi@gmail.com", "password" ],
  [ "Guy", "guy@gmail.com", "password" ]
]

dogs_data = [
  ["Emma", 4, "Female", "Pit", 15, 90021],
  ["Archie", 6, "Male", "Lab", 10, 90096],
  ["Rocky", 10, "Male", "Samoyed", 25, 90032],
  ["Baddie", 2, "Male", "Pit Terrier", 8, 91010],
  ["Tucker", 6, "Male", "Pit", 15, 90076],
  ["Emily", 5, "Female", "Pit", 15, 90101],
  ["Barnie", 7, "Male", "Pit", 15, 90101],
  ["Rorry", 5, "Male", "Pit", 15, 90071],
]

users_data.each do |name, email, password|
  User.create(name: name, email: email, password_digest: password)
end

dogs_data.each do |name, age, gender, breed, weight, zipcode|
  Dog.create( name: name, age: age, gender: gender, breed: breed, weight: weight, zipcode: zipcode)
end