# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

location = ["Sydney Metro"," Eastern suburbs","Western Suburbs","Northern Suburbs","Southern Suburbs"]
destination = location

if Area.count == 0
    location.each do |c|
        Area.create(location: c,destination: c)
        puts "Added default Area #{c}"
    end    

end    