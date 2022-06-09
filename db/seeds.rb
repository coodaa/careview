require 'faker'
require "open-uri"

Faker::Config.locale = 'de'

puts 'deleting current Carehomes'
Carehome.destroy_all

puts 'deleting current Users'
User.destroy_all

User.create(email: 'a@bb.com', password: 'qwertz12', first_name: 'Emma', last_name: 'Rünzel', phone_number: '+49 173 4728021', image_url: "https://ca.slack-edge.com/T02NE0241-U02FW703QBZ-210ec2150a11-512")

User.create(email: 'f@bb.com', password: 'qwertz12', first_name: 'León', last_name: 'Langhoff', phone_number: '+49 173 4728021', image_url: "https://ca.slack-edge.com/T02NE0241-U02FM6HF2S1-1dda31f4f94d-512")

User.create(email: 'hk@bb.com', password: 'qwertz12', first_name: 'Adam', last_name: 'Tomczyk', phone_number: '+49 173 4728021', image_url: "https://ca.slack-edge.com/T02NE0241-U027U71SASU-fba7a0beae17-512")

User.create(email: 'h@bb.com', password: 'qwertz12', first_name: 'Annemarie', last_name: 'van Ingen', phone_number: '+49 173 4728021', image_url: "https://ca.slack-edge.com/T02NE0241-UNV4EERRA-4e81d2b90d53-512")

User.create(email: 'n@bb.com', password: 'qwertz12', first_name: 'David', last_name: 'Klören', phone_number: '+49 173 4728021', image_url: "https://ca.slack-edge.com/T02NE0241-U01TBQ75U87-8c79dffcb36b-512")

User.create(email: 'l@bb.com', password: 'qwertz12', first_name: 'Germain', last_name: 'Loret', phone_number: '+49 173 4728021', image_url: "https://ca.slack-edge.com/T02NE0241-U4XHR6L4F-cf524cb1abea-512")

User.create(email: 'l@bb.com', password: 'qwertz12', first_name: 'Nic', last_name: 'Pina', phone_number: '+49 173 4728021', image_url: "https://ca.slack-edge.com/T02NE0241-U01JA83LP89-5c86991c7106-512")

User.create(email: 'l@bb.com', password: 'qwertz12', first_name: 'Toni', last_name: 'Panacek', phone_number: '+49 173 4728021', image_url: "https://ca.slack-edge.com/T02NE0241-U7G7E99T8-a3d656e2d8e0-512")

User.create(email: 'l@bb.com', password: 'qwertz12', first_name: 'Nina', last_name: 'Hackenbroich', phone_number: '+49 173 4728021', image_url: "https://ca.slack-edge.com/T02NE0241-U0160CHLQ14-c8e3ee5c6d61-512")

User.create(email: 'l@bb.com', password: 'qwertz12', first_name: 'Barack', last_name: 'Obama', phone_number: '+49 173 4728021', image_url: "https://www.silicon.co.uk/wp-content/uploads/2012/01/obamasquare2.png")

male_profile_pics = ['https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
  'https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1618077360395-f3068be8e001?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFufGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bWFufGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1562124638-724e13052daf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1hbnxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1567476445327-705d1b3780de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1hbnxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1561688711-a98d0cfd30a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fG1hbnxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1603924498829-ce16c0da32aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fG1hbnxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1608649672519-e8797a9560cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFuJTIwb2xkfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1509399693673-755307bfc4e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1hbiUyMG9sZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1524703733404-22ca50ae45ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1hbiUyMG9sZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60'
]

# male names
8.times do
  # sleep 2
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10),
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber,
    image_url: male_profile_pics.sample
  )
end

female_profile_pics = [
  'https://images.unsplash.com/photo-1534954553104-88cb75be7648?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZmVtYWxlJTIwb2xkfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1575042179444-2f5c4f87c0d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZmVtYWxlJTIwb2xkfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1534105555282-7f69cbee08fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZlbWFsZSUyMG9sZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1484186694682-a940e4b1a9f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGZlbWFsZSUyMG9sZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGZlbWFsZSUyMG9sZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1567336273898-ebbf9eb3c3bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmVtYWxlfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1512518607807-17e94dc9a5d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fGZlbWFsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1481261224858-2e88a19fc36c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHdvbWFuJTIwb2xkfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1529983118521-c801f13d8cd0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHdvbWFuJTIwb2xkfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1547212371-eb5e6a4b590c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHdvbWFuJTIwZmFjZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1530577197743-7adf14294584?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHdvbWFuJTIwZmFjZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1513091550446-33297bfca05b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzh8fHdvbWFuJTIwZmFjZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
]

# female names
8.times do
  # sleep 2
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10),
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber,
    image_url: female_profile_pics.sample
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
                           'Potsdamer Str. 24, 14163 Berlin Germany',
                           'Späthstraße 9, 12359 Berlin Germany',
                           'Hohensteiner Str. 6-12, 14197 Berlin Germany',
                           'Berkaer Str. 31-35, 14199 Berlin Germany',
                           'Herbartstraße 24, 14057 Berlin Germany',
                           'Herbartstraße 24, 14057 Berlin Germany',
                           'Lützowstraße 24, 10785 Berlin Germany',
                           'Hauptstraße 121A, 10827 Berlin Germany',
                           'Am Köhlerhof 6-8, 24576 Bad Bramstedt Germany',
                           'Mellenbergweg 19, 22359 Hamburg Germany',
                           'Mittelweg 106, 20149 Hamburg Germany',
                           'Elfsaal 20, 22043 Hamburg Germany',
                           'Finkenau 11, 22081 Hamburg Germany',
                           'Gotthardstraße 138, 80689 München Germany',
                           'Berrschestraße 2, 81245 München Germany',
                           'Lorenz-Hagen-Weg 10, 81737 München Germany',
                           'Hiltenspergerstraße 76, 80796 München Germany',
                           'Greinerberg 17, 81371 München Germany',
                           'Weitlstraße 66, 80935 München Germany',
                           'Klenzestraße 70, 80469 München Germany',
                           'Klugstraße 144, 80637 München Germany',
                           'Kleiberweg 115D, 22547 Hamburg Germany',
                           'Kleiner Schäferkamp 43, 20357 Hamburg Germany',
                           'Stückenstraße 1, 22081 Hamburg Germany',
                           'Brandenburger Str. 2A, 04103 Leipzig Germany']

carehome_names = ['Marienstift', 'Seniorenstiftung', 'Pflegehaus','Seniorenzentrum Werner', 'Seniorenzentrum Tegel', 'Seniorenzentrum Mitte', 'Seniorenstift', 'Seniorenstift Mitte', 'Pflegeheim Pinecki', 'Pflegeheim Schmidt', 'Pflegeheim Käfer', 'Pflegeheim Sonne', 'Pflegeheim Sommer', 'Evangelisches Seniorenheim', 'Seniorendomizil Helga', 'Seniorendomizil Sommer', 'Haus Christophorus']

description = [
  'Our Home, is a thriving village community, situated in the beautiful City on the edge of the  Hills. We provide residential, nursing and dementia care and have all the amenities of a modern home. You will find first-class facilities with exciting activities, and plenty of places to relax or entertain. In here it is just some text. We just love it so much here! It is an amazing home. ',
  'A stunning location, our home has all the amenities of a modern home. We provide residential support for elderly people living with different types of dementia, including Alzheimer’s disease, vascular dementia and Korsakoff’s syndrome. We just love it so much here! It is an amazing home. In here it is just some text. We just love it so much here! It is an amazing home.',
  'Located in the heart of the city, our Home has five individual self-contained specialist care communities where all the bedrooms are tastefully decorated and furnished to a high standard, each complete with en suite facilities. Our home has beautiful views of the large landscaped gardens, and there’s a summer house where we have outdoor activities. ',
  'Our purpose-built luxury care home provides residents with high quality nursing, residential and dementia care on a permanent and short stay basis, giving you peace of mind that if your care needs change we can support you. Our own fully trained nurses have specialist expertise and are chosen for their compassion and experience.',
  'We enjoy an enviable reputation for delivering the very highest standards of residential and residential dementia care for up to 19 elderly people in a homely and friendly environment. Tastefully converted to retain charming original features, including wooden beams and inglenook fireplaces. We’re in walking distance of everything the town has to offer.',
  'Our award-winning purpose-built luxury care home, provides residents with high quality dementia, residential and nursing care on a permanent and short stay basis. There’s plenty of places to relax and entertain including our own bistro, hair salon and cinema plus a library, music room and choice of comfortable lounges. Our home is surrounded by lovely patio gardens for all residents to access and enjoy. We’re close to local shops.',
  'This Home is in a peaceful and secluded location. You’ll find first-class facilities with exciting activities, and plenty of places to relax or entertain. Many of the rooms offer picturesque views across the extensive landscaped gardens. With over five acres of grounds, there is always something to explore, whether it be walks. We just love it so much here! It is an amazing home.',
  '5 months ago my husband, who was bedridden with severe dementia, went to La Fontana for a months respite care. It was soon evident that he was receiving excellent care and seemed happy, so he became a permanent resident. He was unable to make use of all the facilities but we had every confidence in the care he received. He was monitored regularly and the staff were friendly, caring and attentive. They were always helpful and communicative.',
  'This home has been the best I have encountered. Its always friendly, lots of activities for the residents to do such as quizzes, singing, word search, the list goes on. The staff are extremely friendly, I visit very often and he is always ready and he is clean, washed and shaven. The food is also very good with bowls of fresh fruit for the residents. The manager is also exceptionally caring and always there to help and leads a great team. Very impressed.'
]

puts 'Creating new Carehomes ...'
count_rnd_pic = 1
20.times do
  Carehome.create!(
    address: german_carehome_address.sample,
    name: carehome_names.sample,
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
  Carehome.last.photos.attach(
    io: File.open(Rails.root.join("app/assets/images/carehome_pic_demo/#{count_rnd_pic}.jpg")),
    filename: "demo_carehome#{count_rnd_pic}.jpg",
    content_type: "image/jpg")
  count_rnd_pic += 1
end

puts 'Creating reviews ...'
carehomes = Carehome.all
rate = (1..5).to_a

content_for_review = [
  'My mother has been cared for by the team for nearly a year now. They understand the care she needs with her dementia',
  'My mam has been in this care home for three years and has always been very happy. Very professionally run. I leave in the knowledge my mam is content and well cared for.',
  'I am very happy that my husband is here - a caring and cheerful staff have helped him cope with infections and mobility problems and I am confident that he will be looked after to the best of their abilities at all times.',
  'Very pleasant staff. Well cared for. Lovely rooms. Enjoy visiting.',
  'My sister always appears well cared for and the room clean and comfortable.',
  'Very caring and efficient care home. Myself and my family would recommend this care home to others.',
  'This is an excellent home. The staff are very friendly, professional and caring. Mam couldnt be in a better home.',
  'The staff at this care home have been excellent with my stepdad. He is very happy here and he takes part in the activities provided. The facilities are also excellent.',
  'It is an excellent home. It has very good facilities and is attractively furnished. The best part of the service is the staff who are always friendly, kind and considerate. It is a very well managed care home.',
  'I am so happy with everything my mother receives. The care is absolutely brilliant, my mother is so happy being there.',
  'My mother settled really well, making friends with other residents. Was well looked after by all the staff.',
  'Dad appears to be very happy and settled. He likes his food and I feel that the staff are very attentive and see to his needs. He is generally clean and that is all we are looking for. He tends to stay in his room and this is always looked after.',
  'When I come to visit my mum she always seems happy and she eats very well. I have no concerns about her care.',
  'I think that overall, everything is ok. However, I have noticed when visiting mum at lunchtime, a vegetarian option never seems to be available.',
  'I am very happy that my uncle is here, in a caring and cheerful staff have helped him cope with infections and mobility problems and I am confident that he will be looked after to the best of their abilities at all times.',
  'Mam is now into her third year and staff have sensitively modified the nature and degree of care needed as her independence have increased. Care from all staff has been good with, in a smaller number of cases an outstanding level of commitment. Liaison and involvement of other agents (district nurses, GP etc) has been prompt and effective.',
  'We chose due to its position next to the park and the reception we received when asking to look around. The friendly nature of the staff and willingness to accommodate requests impressed us from the start and continued to do so. My father isnt the most cooperative at times due to his condition and all the staff have tried their best to make him comfortable, always showing a pleasant and cheerful manner.',
  'My Nan has fantastic care. This care is provided by a pleasant, hardworking caring staff who have my Nans best interests at heart. She is well looked after and is always well turned out and clean. It gives me peace of mind that my Nan is in a safe, secure environment.',
  'Staff were understanding of my needs as the daughter and of my mothers needs. The staff treated mum with respect and tenderness, clearly aware of her needs and habits. Very grateful for the care they are taking of my mum.',
  'I am happy in the home. I am looked after well and get on well with the staff. I enjoy the meals provided. Often I have health problems, they are quickly dealt with. I enjoy the entertainment provided during the week but would like more trips out.',
  'I have not been here very long but I have settled in very well. The staff are great and always have time for me if I need any help nothing is a bother. The food is great with plenty of choices. I enjoy the entertainment there is always plenty of things to do. Today we went to a local pub for lunch then we had a drive to Seaham it was lovely.',
  'Absolutely great as an employer! The staff are also super friendly and are always on hand to offer advice and assistance. I found my dream job here. I really enjoy working with people and it never gets boring. The everyday program is varied and varied. A lot is offered to the residents. Excursions are also very well chosen, as well as the cultural events in the house. One or two things could be expanded, but otherwise absolutely recommendable. For young and old!',
  "The receptionist is really super nice .. And otherwise it's really nice there. But it is cheeky that you go to the interview and then you are told to contact me at the beginning of the week and nothing comes of it. The position is simply put online again.",
  "It's a pity what has become of this house, it used to be a home for old and sick people. For a few years now, you've felt that nobody is taking care of the house anymore. The carers are doing their best, but nobody knows what will happen, when you have to move out because the house is sold. Bad stuff and the staff where does that go? No one knows the answer, just sad. It must be possible to offer all these people a home and a job in the years to come without having to make a big move for the elderly.",
  "The home is very centrally located, which unfortunately also causes my points to be deducted due to the poor parking situation for a large car. The care team takes care of my concerns about my mother immediately and always in a friendly manner. In my opinion (as a visitor) the home is well furnished and a lot is being done for the residents.",
  "My mother has lived in this home for 6 years. Every time she visits, she tells me how kindly the nursing staff takes care of her. The fact that there have been no Covid 19 infections among the residents so far is particularly noteworthy!",
  "Our father lived in the Probstheida retirement home for 9 years. Initially with his wife, who unfortunately passed away in 2017. The care was professional and loving. We were very happy that our father could also be cared for palliatively in the home. That took a lot of burden off us, we were able to visit him every day and see for ourselves how well he was cared for. The preparation of the room has done us a lot as relatives.",
  "Since Corona has been with us for more than a year now, I would like to thank the friendly staff of the care facility of the Albert-Schweitzer-Heim (Diakonie) in Täubchenweg. Despite the renovation and the pandemic, the carers and the administration always have an open ear for the concerns and small needs of my mom and me as relatives. Again thank yyou very much",
  "Very committed employees in all areas, I can't say of all, but some people are just out of place without noticing it. As far as the nursing staff is concerned, I can only say hats off to anyone who is still doing it under these conditions.",
  "As a contractor is always a pleasure to work at Cheverton Lodge.The team is fantastic, always polite and carrying. We are treated with respect, friendly words and always thanked for our work.",
  "Outstanding home with lovely staff ......Nice to see residents happy and engaged",
  "Lovely home, very friendly staff."
]

200.times do
  Review.create!(
    content: content_for_review.sample,
    carehome: carehomes.sample,
    user: all_user.sample,
    food: rate.sample,
    privacy: rate.sample,
    staff: rate.sample,
    hygiene: rate.sample,
    atmosphere: rate.sample
  )
end

demo_user = User.create(email: 'aa@bb.com',
    password: 'qwertz12',
    first_name: 'Sebi',
    last_name: 'Remm',
    phone_number: '+49 173 4728021',
    image_url: "https://ca.slack-edge.com/T02NE0241-U03AS5M8DCM-cc21860a9b0d-512")

file = URI.open("https://ca.slack-edge.com/T02NE0241-U03AS5M8DCM-cc21860a9b0d-512")

demo_user.photo.attach(
  io: file,
  filename: "demo_user.jpg",
  content_type: "image/jpg")
demo_user.save

reviews = Review.all
reviews.each do |review|
  review.rating = review.average_ratings
  review.save
end

puts 'User acount for DEMO - Email: aa@bb.com Password: qwertz12'
