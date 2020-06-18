# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Port.delete_all
Dock.delete_all
Ship.delete_all

port_names = [
  'Chennai Port',
  'Paradip Port',
  'Jawarhalal Nehru Port',
  'Visakhapatnam Port',
  'V.O. Chidambaranar Port',
  'New Mangaluru Port',
  'Kochi Port'
]

ship_names = [
  'Argonaute',
  'Atropos',
  'Bellipotent',
  'Caligula',
  'Clam',
  'Clorinda',
  'Crab',
  'Harvey',
  'Flame',
  'Friday',
  'Harpy',
  'Hotspur',
  'Justinian',
  'Lotus',
  'Lydia',
  'Nightingale'
]

port_names.each_with_index do |port_name, index|
  Port.create(
    name: port_name,
    license: "PORT#{index}",
  )
end

dock_sizes = ['Small', 'Medium', 'Large']

(port_names.length * 10).times do |i|
  Dock.create(
    dock_number: "DOCK_NUMBER#{i}",
    occupied: rand(2) == 1,
    size: dock_sizes[rand(3)]
  )
end

15.times do |i|
  Ship.create(
    name: ship_names[i],
    captain: Faker::Name.name,
    beginning: port_names.sample,
    destination: port_names.sample
  )
end
