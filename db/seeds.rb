# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#users
alex = User.create(name: "Alex", age: 29)
nick = User.create(name: "Nick", age: 22)
john = User.create(name: "Paul", age: 12)


#console_type
xbox=Console_type.create(name: "xbox")
pc = Console_type.create(name: "PC")

#Games

halo= Game.create(name: "Halo",developer: "bungi", year: 2012, rating: "M")
