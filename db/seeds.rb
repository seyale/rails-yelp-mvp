# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Lius',
    address:      '1180, Wien',
    phone_number: '+43 12 12 12',
    category:  'chinese'
  },
  {
    name:         'Francesco',
    address:      '1090, Wien',
    phone_number: '+43 3547',
    category:  'italian'
  },
  {
    name:         'Le Bol',
    address:      '1010, Wien',
    phone_number: '+43 7958',
    category:  'french'
  },
  {
    name:         'Belgian Choc',
    address:      '1230, Wien',
    phone_number: '+43 54676',
    category:  'belgian'
  },
    {
    name:         'Koinonia',
    address:      '1190, Wien',
    phone_number: '+43 3452345',
    category:  'chinese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
