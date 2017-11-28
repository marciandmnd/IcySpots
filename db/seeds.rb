# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Medium.destroy_all
Spot.destroy_all

macba = Spot.create(
          name: 'MACBA',
          address: 'Plaça dels Àngels, 1, 08001 Barcelona, Spain',
          infobox_image: 'macba-infobox.jpg',
          description: 'What you know about MACBA? Ledges and flat ground for days. Party every night.'
        )

sants = Spot.create(
          name: 'Sants Station',
          address: 'Plaça dels Països Catalans, 08014 Barcelona, Spain',
          infobox_image: 'sants-infobox.jpg',
          description: 'Ledges and flat ground for days.'
        )

parallel = Spot.create(
          name: 'Parallel',
          address: 'Av. del Parallel, 49, 08004 Barcelona, Spain',
          infobox_image: 'parallel-infobox.jpg',
          description: 'Ledges, manual pads, and flat ground.'
        )

User.destroy_all

user = User.create(email: 'foo@bar.com', password: 'password', password_confirmation: 'password')



