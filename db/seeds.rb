# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Game.destroy_all
Listing.destroy_all
ConsoleType.destroy_all

#users
alex = User.create(name: "Alex", age: 29)
nick = User.create(name: "Nick", age: 22)
john = User.create(name: "Paul", age: 12)


#ConsoleType
xbox=ConsoleType.create(name: "xbox")
pc = ConsoleType.create(name: "PC")
nintendo = ConsoleType.create(name: "Nintendo")
playstation = ConsoleType.create(name: "Playstation")


#Games

halo = Game.create(name: "Halo",developer: "bungie", release_date: 2001, rating: "M")
call_of_duty = Game.create(name: "Call of Duty", developer: "Activision", release_date: 2003, rating: "M")
spyro = Game.create(name: "Spyro", developer: "Insomniac Games", release_date: 1998, rating: "E")
mario = Game.create(name: "Mario", developer: "bungi", release_date: 1985, rating: "E")
god_of_war = Game.create(name: "God of war", developer: "Santa Monica Studio ", release_date: 2005, rating: "M")
 over_watch = Game.create(name: "Overwatch", developer: "Blizzard ", release_date: 2015, rating: "T")


#Listings
# condition: "like new", "very good", "good", "acceptable"
halo_listing = Listing.create(game: halo, user: nick, console_type: xbox, quality: "new", listed_price: 12, availability: true )
call_of_duty_listing = Listing.create(game: call_of_duty, user: alex, console_type: playstation, quality: "used", condition: "like new", listed_price: 12, availability: true )
spyro= Listing.create(game: spyro, user: nick, console_type: pc, quality: "new", listed_price: 30, availability: true)
mario_listing = Listing.create(game: mario, user: alex, console_type: nintendo, quality: "new", listed_price: 50, availability: true )
god_of_war_listing = Listing.create(game: god_of_war, user: nick, console_type: playstation, quality: "new", listed_price: 25, availability: true)
over_watch_listing = Listing.create(game: over_watch, user: nick, console_type: pc, quality: "new", listed_price: 60, availability: true)

