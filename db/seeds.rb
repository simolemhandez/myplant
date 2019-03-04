User.destroy_all
Plant.destroy_all

simo = User.create(name: "simo", email: "mail@mail.com", password:"blabla", contact:"mail@mail.com")
Plant.create(name: "Bergamotte", user:simo)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
