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

User.create(email: 'aa@bb.com', password: 'qwertz12', first_name: 'John', last_name: 'Schmidt', phone_number: '+49 173 4728021', image_url: "user.image_url")

male_profile_pics = ['https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
'https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
'https://images.unsplash.com/photo-1618077360395-f3068be8e001?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFufGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bWFufGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
'https://images.unsplash.com/photo-1562124638-724e13052daf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1hbnxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
'https://images.unsplash.com/photo-1567476445327-705d1b3780de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1hbnxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
'https://images.unsplash.com/photo-1561688711-a98d0cfd30a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fG1hbnxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60'
'https://images.unsplash.com/photo-1603924498829-ce16c0da32aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fG1hbnxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1608649672519-e8797a9560cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFuJTIwb2xkfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1509399693673-755307bfc4e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1hbiUyMG9sZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1524703733404-22ca50ae45ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1hbiUyMG9sZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60'
]

# male names
7.times do
  # sleep 2
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10),
    first_name: fake.first_name_male,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber,
    image_url: male_profile_pics.sample,
  )
end

female_profile_pics = [
  'https://images.unsplash.com/photo-1534954553104-88cb75be7648?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZmVtYWxlJTIwb2xkfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1575042179444-2f5c4f87c0d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZmVtYWxlJTIwb2xkfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1534105555282-7f69cbee08fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZlbWFsZSUyMG9sZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60'
  'https://images.unsplash.com/photo-1484186694682-a940e4b1a9f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGZlbWFsZSUyMG9sZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGZlbWFsZSUyMG9sZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60'
  'https://images.unsplash.com/photo-1567336273898-ebbf9eb3c3bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmVtYWxlfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1512518607807-17e94dc9a5d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fGZlbWFsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1481261224858-2e88a19fc36c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHdvbWFuJTIwb2xkfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60'
  'https://images.unsplash.com/photo-1529983118521-c801f13d8cd0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHdvbWFuJTIwb2xkfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1547212371-eb5e6a4b590c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHdvbWFuJTIwZmFjZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1530577197743-7adf14294584?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHdvbWFuJTIwZmFjZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1513091550446-33297bfca05b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzh8fHdvbWFuJTIwZmFjZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  ]

# female names
7.times do
  # sleep 2
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10),
    first_name: fake.first_name_male,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber,
    image_url: female_profile_pics.sample,
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
                           'Max-Joseph-Straße 48, 68167 Mannheim Germany',
                           'Minneburgstraße 66, 68219 Mannheim Germany',
                           'Viehhofstraße 27, 68165 Mannheim Germany',
                           'Potsdamer Str. 24, 14163 Berlin',
                          'Späthstraße 9, 12359 Berlin',
                          'Hohensteiner Str. 6-12, 14197 Berlin'
                          'Berkaer Str. 31-35, 14199 Berlin',
                          'Herbartstraße 24, 14057 Berlin',
                          'Herbartstraße 24, 14057 Berlin'
                          'Lützowstraße 24, 10785 Berlin',
                          'Hauptstraße 121A, 10827 Berlin',
                          'Am Köhlerhof 6-8, 24576 Bad Bramstedt',
                          'Mellenbergweg 19, 22359 Hamburg',
                          'Mittelweg 106, 20149 Hamburg',
                          'Elfsaal 20, 22043 Hamburg',
                          'Finkenau 11, 22081 Hamburg',
                          'Gotthardstraße 138, 80689 München',
                          'Berrschestraße 2, 81245 München',
                          'Lorenz-Hagen-Weg 10, 81737 München',
                          'Hiltenspergerstraße 76, 80796 München',
                          'Greinerberg 17, 81371 München',
                          'Weitlstraße 66, 80935 München',
                          'Klenzestraße 70, 80469 München',
                          'Klugstraße 144, 80637 München'
                          ]

carehome_names = ['Marienstift', 'Seniorenstiftung', 'Pflegehaus','Seniorenzentrum Werner', 'Seniorenzentrum Tegel', 'Seniorenzentrum Mitte', 'Seniorenstift', 'Seniorenstift Mitte', 'Pflegeheim Pinecki', 'Pflegeheim Schmidt', 'Pflegeheim Käfer', 'Pflegeheim Sonne', 'Pflegeheim Sommer', 'Evangelisches Seniorenheim', 'Seniorendomizil Helga', 'Seniorendomizil Sommer', 'Haus Christophorus']

description = [






]

puts 'Creating new Carehomes ...'
50.times do
  Carehome.create!(
    address: german_carehome_address.sample,
    name: carehomes.sample,
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
    description: description.sample,
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
