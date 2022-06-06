# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Faker::Config.locale = 'de'

puts 'deleting current Carehomes'
Carehome.destroy_all

puts 'deleting current Users'
User.destroy_all

User.create(email: 'aa@bb.com', password: 'qwertz12', first_name: 'Oliver', last_name: 'Schmidt', phone_number: '06062565854', image_url: "https://ca.slack-edge.com/T02NE0241-U01112279QU-32e6c9d36a8d-512")

profile_pics = ['https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
  'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
  'https://images.unsplash.com/photo-1534126416832-a88fdf2911c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
  'https://images.unsplash.com/photo-1555703473-5601538f3fd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1116&q=80',
  'https://images.unsplash.com/photo-1485290334039-a3c69043e517?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
  'https://images.unsplash.com/photo-1506551109886-6101f48c1ab9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'
]

5.times do
  # sleep 2
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber,
    image_url: profile_pics.sample,
  )
end

all_user = User.all
carehome_type = ['Care Home', 'Nursing Home', 'Care home with dementia care', 'Dual-registered care home']
german_carehome_address = ['Alfred-Jung-Straße 17, 10367 Berlin Germany',
                           'Danziger Str. 245, 10407 Berlin Germany',
                           'Am Friedrichshain 18, 10407 Berlin Germany',
                           'Büschingstraße 29, 10249 Berlin Germany',
                           'Am Friedrichshain 18, 10407 Berlin Germany',
                           'Büschingstraße 29, 10249 Berlin Germany',
                           'Volkradstraße 28, 10319 BerlinGermany',
                           'Neumühlen 37, 22763 Hamburg Germany',
                           'Mellenbergweg 19, 22359 Hamburg Germany',
                           'Stückenstraße 1, 22081 Hamburg Germany',
                           'Weitlstraße 66, 80935 München Germany',
                           'Hans-Mielich-Straße 4, 81543 München Germany',
                           'Carl-Benz-Straße 10, 68167 Mannheim Germany',
                           'Max-Joseph-Straße 46-48, 68167 Mannheim Germany',
                           'Minneburgstraße 66, 68219 Mannheim Germany',
                           'Viehhofstraße 25-27, 68165 Mannheim Germany']

puts 'Creating new Carehomes ...'
15.times do
  Carehome.create!(
    address: german_carehome_address.sample,
    name: Faker::Company.name,
    activities: [true, false].sample,
    types: carehome_type.sample,
    pets_allowed: [true, false].sample,
    wifi: [true, false].sample,
    lift: [true, false].sample,
    wheelchair_access: [true, false].sample,
    security: [true, false].sample,
    smoke_alarm: [true, false].sample,
    tv: [true, false].sample,
    parking: [true, false].sample,
    hair_salon: [true, false].sample,
    sauna: [true, false].sample,
    bar: [true, false].sample,
    air_conditioning: [true, false].sample,
    physiotherapist: [true, false].sample,
    min_price: (250...800).to_a.sample,
    max_price: (1000...2500).to_a.sample,
    description: Faker::Restaurant.description,
    user: all_user.sample
  )
end

puts 'Creating reviews ...'
carehomes = Carehome.all
rate = (1..5).to_a

40.times do
  Review.create!(
    content: Faker::Restaurant.review,
    carehome: carehomes.sample,
    user: all_user.sample,
    rating: rate.sample,
    food: rate.sample,
    privacy: rate.sample,
    staff: rate.sample,
    hygiene: rate.sample,
    atmosphere: rate.sample
  )
end

Carehome.create!(
  address: 'Liebigstrasse 12 10247 Berlin Germany',
  name: "No review carehome",
  activities: [true, false].sample,
  types: 'Care Home',
  pets_allowed: [true, false].sample,
  wifi: [true, false].sample,
  lift: [true, false].sample,
  wheelchair_access: [true, false].sample,
  security: [true, false].sample,
  smoke_alarm: [true, false].sample,
  tv: [true, false].sample,
  parking: [true, false].sample,
  hair_salon: [true, false].sample,
  sauna: [true, false].sample,
  bar: [true, false].sample,
  air_conditioning: [true, false].sample,
  physiotherapist: [true, false].sample,
  min_price: (250...800).to_a.sample,
  max_price: (1000...2500).to_a.sample,
  description: Faker::Restaurant.description,
  user: all_user.sample
)

puts 'User acount for testing - Email: aa@bb.com Password: qwertz12'
