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

User.create(email: 'aa@bb.com', password: 'qwertz12')

5.times do
  User.create(
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10)
  )
end

all_user = User.all
carehome_type = ['Care Home', 'Nursing Home', 'Care homes with dementia care', 'Dual-registered care homes']

puts 'Creating new Carehomes ...'
15.times do
  Carehome.create(
    address: Faker::Address.full_address,
    name: Faker::Company.name,
    activities: 'Add extra activities here !',
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

puts 'User acount for testing - Email: aa@bb.com Password: qwertz12'
