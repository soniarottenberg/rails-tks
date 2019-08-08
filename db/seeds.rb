# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Blood bath ongoing..."

pikachu = Fighter.create!(
  name:"Pikachu",
  remote_avatar_url: "https://res.cloudinary.com/diuc2dxj5/image/upload/v1565096488/killing-spree/pikachu-sprite_uhbg68.gif",
  level: 1,
  exp: 0,
  health: 7,
  attack: 9,
  defense: 8,
  winrate: 0,
)

salameche = Fighter.create!(
  name:"Salamèche",
  remote_avatar_url: "https://res.cloudinary.com/diuc2dxj5/image/upload/v1565096494/killing-spree/salameche-sprite_n68yoc.gif",
  level: 1,
  exp: 0,
  health: 6,
  attack: 11,
  defense: 7,
  winrate: 0,
)
