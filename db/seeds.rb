# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spot.destroy_all

macba = Spot.create(
          name: 'MACBA',
          address: 'Plaça dels Àngels, 1, 08001 Barcelona',
          infobox_image: 'macba-infobox.jpg',
          description: 'What you know about MACBA? Ledges and flat ground for days. Party every night.'
        )


User.destroy_all

User.create(email: 'foo@bar.com', password: 'password', password_confirmation: 'password')
Medium.destroy_all