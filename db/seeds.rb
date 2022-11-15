# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
10.times do
  Product.create!(title: "Product ##{SecureRandom.random_number(100)}", 
  	description: "Description##{SecureRandom.random_number(100)}", 
  	price: SecureRandom.random_number(100))


  User.create!(name: "User №#{rand(999_999)}", 
    email: "email#{rand(999_999)}@email.com", 
    password: SecureRandom.alphanumeric)
end