# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

admin = User.new
admin.email = 'admin@kn.com'
admin.password = 'password'
admin.password_confirmation = 'password'
admin.admin = true
admin.skip_confirmation!
admin.save!

client = User.new
client.email = 'client@kn.com'
client.password = 'password'
client.password_confirmation = 'password'
client.admin = false
client.skip_confirmation!
client.save!

cart = Cart.new
cart.user_id = User.last.id
cart.save!

Product.create( name: "BÛCHE NOISETTINE, ÉDITION LIMITÉE 2018",
                description: "En vente sur notre site et en boulangerie du VENDREDI 14 au LUNDI 31 DÉCEMBRE 2018.
                              Éric Kayser et ses équipes proposent une bûche édition spéciale « Noisettine » pour sublimer les fins de repas de fêtes.
                              La noisette est réputée pour sa saveur, c’est l’un de nos « fruits des bois » les plus délicats.
                              Elle rappelle, par sa douceur et son parfum subtil, les souvenirs d’enfance : nougat, pralines, crèmes au praliné…
                              L’association noisette citron est exquise. Le citron apporte un zeste d’acidité sucrée qui sublime le goût de la noisette et titille divinement les papilles.
                              Cette création, qui joue avec les textures, l’acidulé et la douceur, achèvera avec finesse et fraîcheur les repas de fêtes.",
                price: 3.2,
                category: "Patisserie" )


19.times do
  Product.create( name: Faker::Food.fruits,
                  description: Faker::Food.description,
                  price: Faker::Number.decimal(2, 2),
                  category: Faker::Food.dish )
end
