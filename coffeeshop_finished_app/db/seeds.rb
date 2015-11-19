# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

beans = Bean.create([{ name: "Wilson's Blend",  roast: "light", origin: "Sumatra",  quantity: 1.0 }, 
    { name: "Marc's Dark Roast", roast: "dark", origin: "Kenya", quantity: 3.75 }])