# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["books","clothing","electronics","gardening","furniture"]

if Category.count == 0
    categories.each do |c|
        Category.create(name: c)
        puts "Added default Area #{c}"
    end    

end    