require 'open-uri'

puts "deleting users"

Booking.delete_all
Review.delete_all
Tagging.delete_all
Tag.delete_all
Venue.delete_all
User.delete_all

puts "creating users"

def  attach_photo(user, url)
  file = URI.open(url)
  user.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
end

user1 = User.create( email:"fburg6824@gmail.com", password: "123456", name: "Ford Burgess", created_at: '2017-01-01 00:00:00')
user2 = User.create(email: "john.mcclendon@hotmail.com", password: "password123", name: "John McClendon", created_at: '2016-03-15 09:22:00')
user3 = User.create(email: "mariela.garcia45@yahoo.com", password: "mariela123", name: "Mariela Garcia", created_at: '2015-08-22 17:04:00')
user4 = User.create(email: "michael.smith@gmail.com", password: "mike1234", name: "Michael Smith", created_at: '2016-11-10 12:15:00')
user5 = User.create(email: "emily.jameson@gmail.com", password: "emilyjameson1", name: "Emily Jameson", created_at: '2016-06-30 08:30:00')
user6 = User.create(email: "robert.lane@aol.com", password: "rob1234", name: "Robert Lane", created_at: '2016-02-19 14:00:00')
user7 = User.create(email: "susan.lee@gmail.com", password: "susie2022", name: "Susan Lee", created_at: '2017-05-13 11:50:00')
user8 = User.create(email: "daniel.brown@outlook.com", password: "danielbrown123", name: "Daniel Brown", created_at: '2019-04-07 18:23:00')
user9 = User.create(email: "lindsey.miller@yahoo.com", password: "lindsey89", name: "Lindsey Miller", created_at: '2018-12-04 10:45:00')
user10 = User.create(email: "charles.wilson@icloud.com", password: "charleswilson98", name: "Charles Wilson", created_at: '2020-11-30 07:05:00')
user11 = User.create(email: "tina.martin@outlook.com", password: "tina12456", name: "Tina Martin", created_at: '2021-09-25 13:10:00')
user12 = User.create(email: "mike.johnson@outlook.com", password: "password123", name: "Mike Johnson", created_at: '2017-07-15 14:22:34')
user13 = User.create(email: "alejandro.martinez@yahoo.com", password: "password123", name: "Alejandro Martinez", created_at: '2019-03-10 11:45:50')
user14 = User.create(email: "jane.smith@gmail.com", password: "123abc", name: "Jane Smith", created_at: '2016-06-30 08:15:22')
user15 = User.create(email: "emily.williams@aol.com", password: "mypassword", name: "Emily Williams", created_at: '2020-01-05 17:32:18')
user16 = User.create(email: "kofi.adu@ymail.com", password: "password1234", name: "Kofi Adu", created_at: '2018-09-22 12:11:03')
user17 = User.create(email: "shanice.harris@hotmail.com", password: "shani123", name: "Shanice Harris", created_at: '2017-11-14 19:02:30')
user18 = User.create(email: "john.tan@live.com", password: "securepass", name: "John Tan", created_at: '2021-04-03 16:05:45')
user19 = User.create(email: "olivia.brown@icloud.com", password: "brown1234", name: "Olivia Brown", created_at: '2019-12-25 09:50:10')
user20 = User.create(email: "rashid.khan@gmail.com", password: "mypass123", name: "Rashid Khan", created_at: '2020-08-18 22:01:59')
user21 = User.create(email: "isabella.lopez@outlook.com", password: "ilovebooks", name: "Isabella Lopez", created_at: '2016-12-01 20:33:12')
user22 = User.create(email: "amir.jafari@gmail.com", password: "password789", name: "Amir Jafari", created_at: '2017-03-20 10:30:45')
user23 = User.create(email: "kamilah.alhassan@outlook.com", password: "kamilah2020", name: "Kamilah Alhassan", created_at: '2018-06-17 13:40:55')
user24 = User.create(email: "tarek.ghazal@icloud.com", password: "tarek12345", name: "Tarek Ghazal", created_at: '2019-01-11 09:55:12')
user25 = User.create(email: "irina.petrova@hotmail.com", password: "irina2021", name: "Irina Petrova", created_at: '2019-04-22 14:20:33')
user26 = User.create(email: "hassan.salim@zoho.com", password: "hassan2021", name: "Hassan Salim", created_at: '2020-02-13 16:40:20')
user27 = User.create(email: "yasmin.ali@googlemail.com", password: "yasminpassword", name: "Yasmin Ali", created_at: '2020-08-09 12:30:25')
user28 = User.create(email: "matvei.ivanov@aol.com", password: "matvei4321", name: "Matvei Ivanov", created_at: '2020-11-04 19:15:50')
user29 = User.create(email: "raouf.benali@outlook.com", password: "raouf2021", name: "Raouf Benali", created_at: '2021-04-01 18:10:05')
user30 = User.create(email: "ayumi.kimura@zoho.com", password: "ayumi2021", name: "Ayumi Kimura", created_at: '2021-07-16 11:05:12')
user31 = User.create(email: "layla.mohammed@gmail.com", password: "layla1234", name: "Layla Mohammed", created_at: '2021-09-10 10:25:40')
user32 = User.create(email: "jeremy.erixon@gmail.com", password: "john1234", name: "Jeremy Erixon", created_at: '2021-12-10 10:25:40')
user33 = User.create(email: "emma.smith33@gmail.com", password: "emma1234", name: "Emma Smith", created_at: '2021-01-10 10:25:40')
user34 = User.create(email: "michael.jones34@gmail.com", password: "michael1234", name: "Michael Jones", created_at: '2021-02-10 10:25:40')
user35 = User.create(email: "olivia.brown35@gmail.com", password: "olivia1234", name: "Olivia Brown", created_at: '2021-03-10 10:25:40')
user36 = User.create(email: "liam.williams36@gmail.com", password: "liam1234", name: "Liam Williams", created_at: '2019-08-10 10:25:40')
user37 = User.create(email: "sofia.miller37@gmail.com", password: "sofia1234", name: "Sofia Miller", created_at: '2021-11-10 10:25:40')
user38 = User.create(email: "jacob.davis38@gmail.com", password: "jacob1234", name: "Jacob Davis", created_at: '2021-07-10 10:25:40')
user39 = User.create(email: "chloe.garcia39@gmail.com", password: "chloe1234", name: "Chloe Garcia", created_at: '2022-09-10 10:25:40')
user40 = User.create(email: "noah.rodriguez40@gmail.com", password: "noah1234", name: "Noah Rodriguez", created_at: '2020-09-10 10:25:40')
user41 = User.create(email: "mia.martinez41@gmail.com", password: "mia1234", name: "Mia Martinez", created_at: '2024-09-10 10:25:40')
user42 = User.create(email: "isabella.hernandez42@gmail.com", password: "isabella1234", name: "Isabella Hernandez", created_at: '2021-09-15 11:45:12')
user43 = User.create(email: "ethan.moore43@gmail.com", password: "ethan1234", name: "Ethan Moore", created_at: '2021-09-17 14:30:05')
user44 = User.create(email: "ava.taylor44@gmail.com", password: "ava1234", name: "Ava Taylor", created_at: '2021-09-18 09:22:18')
user45 = User.create(email: "mason.jackson45@gmail.com", password: "mason1234", name: "Mason Jackson", created_at: '2021-09-19 13:11:27')
user46 = User.create(email: "lucas.white46@gmail.com", password: "lucas1234", name: "Lucas White", created_at: '2021-09-20 16:02:55')
user47 = User.create(email: "zoe.harris47@gmail.com", password: "zoe1234", name: "Zoe Harris", created_at: '2021-09-21 18:25:09')
user48 = User.create(email: "aiden.clark48@gmail.com", password: "aiden1234", name: "Aiden Clark", created_at: '2021-09-22 10:35:47')
user49 = User.create(email: "mia.lewis49@gmail.com", password: "mia1234", name: "Mia Lewis", created_at: '2021-09-23 12:18:36')
user50 = User.create(email: "jackson.walker50@gmail.com", password: "jackson1234", name: "Jackson Walker", created_at: '2021-09-24 15:50:23')
user51 = User.create(email: "sophia.young51@gmail.com", password: "sophia1234", name: "Sophia Young", created_at: '2021-09-25 17:42:08')

puts "all users created"

attach_photo(user1, "https://media.licdn.com/dms/image/v2/C5603AQGgceg7B8PXsA/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1653968669721?e=1740009600&v=beta&t=INw2Rvm_mjkZ4ZYnj2uPeAULKujodAsH6MaOSVxIDMw" )

users = [
  user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15, user16, user17, user18, user19, user20, user21, user22, user23,
  user24, user25, user26, user27, user28, user29, user30, user31
]

puts "creating tags"

tag1 = Tag.create(name: "Corporate Parties")
tag2 = Tag.create(name: "Weddings")
tag3 = Tag.create(name: "Conventions")
tag4 = Tag.create(name: "Birthday Parties")
tag5 = Tag.create(name: "Family Reunions")
tag6 = Tag.create(name: "Conferences")
tag7 = Tag.create(name: "Networking Events")
tag8 = Tag.create(name: "Workshops")
tag9 = Tag.create(name: "Cultural Events")
tag10 = Tag.create(name: "Fitness")
tag11 = Tag.create(name: "Film & Photo Shoots")


puts "creating venues"

file = URI.open("https://static.showit.co/1200/Zsuke6vBQo6TKAeALs5QrA/89411/cafebrauerballroom.jpg")
venue1 = Venue.new(title: "Café Brauer", location: "Chicago, Illinois, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 300, square_meters: 150, user: users.sample)
venue1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue1.tags = [tag2, tag4]
venue1.save!

file = URI.open("https://corinthianhouston.net/wp-content/uploads/2019/11/HoustonWeddingVenue-Corinthian-JennyFu-497.jpg")
venue2 = Venue.new(title: "Corinthian Houston", location: "Houston, Texas, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 600, square_meters: 150, user: users.sample)
venue2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue2.tags = [tag2, tag4, tag9]
venue2.save!

file = URI.open("https://okcconventioncenter.com/wp-content/uploads/2021/05/Oklahoma-City-Convention-Center-Ballroom-IV.jpg")
venue3 = Venue.new(title: "Painted Sky Ballroom, OKC Convention Center", location: "Oklahoma City, Oklahoma, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 250, square_meters: 29874, user: users.sample)
venue3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue3.tags = [tag6, tag8, tag11]
venue3.save!

file = URI.open("https://assets.venuecrew.com/wp-content/uploads/2020/11/12183615/Garden-Museum-The-Nave-6.jpg")
venue4 = Venue.new(title: "Garden Museum", location: "London, England", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 400, square_meters: 500, user: users.sample)
venue4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue4.tags = [tag1, tag4, tag8]
venue4.save!

file = URI.open("https://premierconstructionnews.com/wp-content/uploads/2021/12/lr-Aspen_07_2021-17.jpg")
venue5 = Venue.new(title: "aspen & meursault", location: "Battersea, London, England", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 51.475949372429554, longitude: -0.17300124519386556, user: users.sample)
venue5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue5.tags = [tag9, tag10, tag3]
venue5.save!

file = URI.open("https://www.tagvenue.com/upload/c3/65/14822-elizabeth-room-room.jpg")
venue6 = Venue.new(title: "Elizabeth Room - Events at No6", location: "Aldgate, London, UK", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 51.51379894494875, longitude: -0.07225599755978063, user: users.sample)
venue6.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue6.tags = [tag7, tag2, tag1]
venue6.save!

file = URI.open("https://www.tagvenue.com/upload/c3/65/14822-elizabeth-room-room.jpg")
venue7 = Venue.new(title: "Elizabeth Room - Events at No6", location: "Aldgate, London, UK", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 51.51379894494875, longitude: -0.07225599755978063, user: users.sample)
venue7.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue7.tags = [tag1, tag2, tag5]
venue7.save!

file = URI.open("https://media.myswitzerland.com/image/fetch/c_lfill,g_auto,w_3200,h_1800/f_auto,q_80,fl_keep_iptc/https://static.stnet.ch/mice/images/36531-o.jpg")
venue8 = Venue.new(title: "Les Salons", location: "Geneva, Switzerland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 46.2004502430056, longitude: 6.1419636121733765, user: users.sample)
venue8.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue8.tags = [tag1, tag4, tag10]
venue8.save!

file = URI.open("https://fribourg.ch/wp-content/uploads/2021/11/fribourg-27742-2e50d1009a094cc21b4729568fdc064417e28d4c_3000.jpg")
venue9 = Venue.new(title: "Forum Fribourg", location: "Fribourg, Switzerland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 46.82399650509932, longitude: 7.15276509289182, user: users.sample)
venue9.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue9.tags = [tag2, tag8, tag10]
venue9.save!

file = URI.open("https://images.squarespace-cdn.com/content/v1/63e1815095586b0aca078b24/23382a0b-f403-4388-ab36-4edb8271f4c4/_DSF7912_cover3.jpg")
venue10 = Venue.new(title: "The Falls", location: "Los Angeles, California, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 34.04533584139357, longitude: -118.25151001910882, user: users.sample)
venue10.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue10.tags = [tag2, tag4, tag9]
venue10.save!

file = URI.open("https://www.tagvenue.com/resize/36/4b/fit-900-600;32991-main-hall-room.jpg")
venue11 = Venue.new(title: "Webster Hall", location: "San Francisco, California, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 37.79016822911196, longitude: -122.43200617722154, user: users.sample)
venue11.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue11.tags = [tag8, tag4, tag10]
venue11.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipMpgw5fhF3hCsg9r9hx16wi4WThkOrgZuzce4I1=s1360-w1360-h1020")
venue12 = Venue.new(title: "Midtown Loft & Terrace", location: "New York, New York, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 40.74551783688207, longitude: -73.98643556112668, user: users.sample)
venue12.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue1.tags = [tag10, tag11, tag1]
venue12.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipNYpTgXKBeEv7YIf7VGh5ePcdp4SiY9uBjSsNZK=s1360-w1360-h1020")
venue13 = Venue.new(title: "Tribeca Rooftop + 360°", location: "New York, New York, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 40.72363776079546, longitude: -74.00861184578577, user: users.sample)
venue13.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue13.tags = [tag1, tag4, tag3]
venue13.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipM9duHCG7Z_rLhvfdhSin3JyPnWaJat0flDUH02=s1360-w1360-h1020")
venue14 = Venue.new(title: "Concepts Event Studio Event Space", location: "Brooklyn, New York, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 40.680679005586484, longitude: -73.96258806112992, user: users.sample)
venue14.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue14.tags = [tag1, tag2, tag10]
venue14.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipPU234F7X2YmrMNrjyDEIrK_WyDqo-7BbZ8nJbY=s1360-w1360-h1020")
venue15 = Venue.new(title: "Pavillon Cambon", location: "Paris, France", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 48.86947021596366, longitude: 2.327811339311076, user: users.sample)
venue15.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue15.tags = [tag1, tag5, tag7]
venue15.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipOejvC8Oy8g3YmoiHYjmGxlFfga97d2Bt3u4GME=s1360-w1360-h1020")
venue16 = Venue.new(title: "Le Pavillon Passy", location: "Paris, France", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 48.859584360163645, longitude: 2.276519868146013, user: users.sample)
venue16.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue16.tags = [tag1, tag5, tag9]
venue16.save!

file = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/de/4e/6a/palais-des-congres.jpg?w=1800&h=1000&s=1")
venue17 = Venue.new(title: "Palace of Congresses and Exhibitions Nice Acropolis", location: "Nice, France", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 43.7053737452335, longitude: 7.2814975103705395, user: users.sample)
venue17.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue17.tags = [tag1, tag3, tag10]
venue17.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipPSX3vqNwExZdUAVeKPgOz_W1wGKRE8OPF1Eunj=s1360-w1360-h1020")
venue18 = Venue.new(title: "Filadelfia Convention Center", location: "Stockholm, Sweden", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 710, square_meters: 500, latitude: 59.3396078000571, longitude: 18.034496429666152, user: users.sample)
venue18.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue18.tags = [tag2, tag1, tag10]
venue18.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipM_c8N6MQntiJmhHaaxS5uVBgzs2fVOhtCrH3ls=s1360-w1360-h1020")
venue19 = Venue.new(title: "Sjöfartshuset Festvåning Stockholm", location: "Stockholm, Sweden", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 670, square_meters: 500, latitude: 59.32586180261419, longitude: 18.075335072490436, user: users.sample)
venue19.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue19.tags = [tag1, tag3, tag10]
venue19.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipPwI201qURgkoSWNxApfWHVU1Bg3GhWFWTNXtjW=s1360-w1360-h1020")
venue20 = Venue.new(title: "The Caves", location: "Edinburgh, Scotland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 700, square_meters: 500, latitude: 55.948545385376235, longitude: -3.1864632467665084, user: users.sample)
venue20.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue20.tags = [tag1, tag8, tag10]
venue20.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipOZcKpUmuorlbGKqyFChwKjc2oU2zwn6L6BCTdS=s1360-w1360-h1020")
venue21 = Venue.new(title: "Edinburgh International Conference Centre", location: "Edinburgh, Scotland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 440, square_meters: 500, latitude: 55.9461070618864, longitude: -3.2094884737537592, user: users.sample)
venue21.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue21.tags = [tag2, tag4, tag9]
venue21.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipM1ak6EUpn5B-ulRu0ifhiGQL4m49tSVhWup0WH=s2880-w2880-h1624-rw")
venue22 = Venue.new(title: "Grand Botanical Suite", location: "Birmingham, England", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 250, square_meters: 500, latitude: 52.47791533689877, longitude: -1.884902529791512, user: users.sample)
venue22.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue1.tags = [tag1, tag5, tag10]
venue22.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipO8gL2OuiiodveS7os1MJc5Q5Ytlh6iIYvgdcoz=s1360-w1360-h1020")
venue23 = Venue.new(title: "Shabnam venue", location: "Manchester, England", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 200, square_meters: 500, latitude: 53.49350752718995, longitude: -2.2388409450714133, user: users.sample)
venue23.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue23.tags = [tag5, tag10, tag8]
venue23.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipNUSYytfISuLrgZrc-PnZgGAsI16GKRbUvF0U5t=s680-w680-h510")
venue24 = Venue.new(title: "Manchester Central Convention Comple", location: "Manchester, England", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 200, square_meters: 500, latitude: 53.47733909066588, longitude: -2.2463485835560335, user: users.sample)
venue24.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue24.tags = [tag1, tag2, tag3]
venue24.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipNc3UgSV_nrBPqgnKkJoKOwLdper6TyK70SqMEJ=s1360-w1360-h1020")
venue25 = Venue.new(title: "The Secret Tower", location: "Newcastle, England", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 200, square_meters: 450, latitude: 54.971410945789934, longitude: -1.6035519584732236, user: users.sample)
venue25.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue25.tags = [tag3, tag5, tag10]
venue25.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipM9xETIzV8tXjS-5vmk5-kXAc_2uBq5j04jQdZz=s1360-w1360-h1020")
venue26 = Venue.new(title: "Tyne Bank Brewery - Event Space", location: "Newcastle, England", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 340, square_meters: 450, latitude: 54.969315511544465, longitude: -1.5780666431314034, user: users.sample)
venue26.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue26.tags = [tag6, tag10, tag11]
venue26.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipMWBZbU1slCSvHt27pmyBtDHz4aiFFjI0cjgn1L=s680-w680-h510")
venue27 = Venue.new(title: "St. Peters Hall Cardiff", location: "Cardiff, Wales", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 340, square_meters: 500, latitude: 51.48710546770795, longitude: -3.168576431699636, user: users.sample)
venue27.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue27.tags = [tag11, tag2, tag5]
venue27.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipMdBDc8fUhkEBb-GKfkOW6vVYUl7EVzhfV43IXw=s2880-w2880-h1624-rw")
venue28 = Venue.new(title: "Pencoed House Estate", location: "Cardiff, Wales", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 340, square_meters: 620, latitude: 51.51047177709114, longitude: -3.309459031698239, user: users.sample)
venue28.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue28.tags = [tag2, tag5, tag7]
venue28.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipO3mZDcqyfkJNeemM5bbg0nUmH6enq-vihvJX0=s1360-w1360-h1020")
venue29 = Venue.new(title: "Insole Court", location: "Cardiff, Wales", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 340, square_meters: 1100, latitude: 51.494013788190145, longitude: -3.226458962383126, user: users.sample)
venue29.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue29.tags = [tag1, tag5, tag10]
venue29.save!

file = URI.open("https://www.bizzabo.com/wp-content/uploads/2021/09/berlin-event-venues-westhafen-event-and-convention-center-min.png")
venue30 = Venue.new(title: "WestHafen Event and Convention Centre", location: "Berlin, Germany", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 730, square_meters: 500, latitude: 52.53669931024727, longitude: 13.34147361349354, user: users.sample)
venue30.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue30.tags = [tag4, tag5, tag7]
venue30.save!

file = URI.open("https://www.bizzabo.com/wp-content/uploads/2021/09/berlin-event-venues-station-berlin-min.png")
venue31 = Venue.new(title: "STATION Berlin", location: "Berlin, Germany", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 500, square_meters: 500, latitude: 52.50002994432565, longitude: 13.375759957670972, user: users.sample)
venue31.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue31.tags = [tag2, tag4, tag9]
venue31.save!

file = URI.open("https://www.iheartberlin.de/wp-content/uploads/2017/09/10-Years-of-iHeartBerlin-at-Kraftwerk-1557.jpg")
venue32 = Venue.new(title: "Kraftwerk", location: "Berlin, Germany", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 800, square_meters: 500, latitude: 52.51119338959006, longitude: 13.41939315397415, user: users.sample)
venue32.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue32.tags = [tag3, tag5, tag10]
venue32.save!

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9c/Trojsk%C3%BD_z%C3%A1mek%2C_pohled_ze_zahrady.JPG")
venue33 = Venue.new(title: "Troja Palace", location: "Prague, Czech Republic", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 1200, square_meters: 500, latitude: 50.11658631305001, longitude: 14.412895357670973, user: users.sample)
venue33.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue33.tags = [tag5, tag6, tag8]
venue33.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipOl95K0ymal6JPQuVZcxj9aH_9wKkBYX7qbGoDM=s1360-w1360-h1020")
venue34 = Venue.new(title: "Loftage Frankfurt", location: "Frankfurt, Germany", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 700, square_meters: 500, latitude: 50.133937884576895, longitude: 8.59115994188035, user: users.sample)
venue34.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue34.tags = [tag1, tag4, tag9]
venue34.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipN1rFCGQ62wTJ1xwSM-sZmgn1HddyLRAxvCbRZw=s1360-w1360-h1020")
venue35 = Venue.new(title: "Papiersaal", location: "Zürich, Switzerland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 700, square_meters: 500, latitude: 47.35830609948755, longitude: 8.522696659726583, user: users.sample)
venue35.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue35.tags = [tag1, tag6, tag9]
venue35.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipMcuzP8423kTY2aEcj9cJadFOSSA9R279CV_6v8=s1360-w1360-h1020")
venue36 = Venue.new(title: "AURA Banquet Hall", location: "Zürich, Switzerland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 750, square_meters: 500, latitude: 47.36877169603012, longitude: 8.537920713493536, user: users.sample)
venue36.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue36.tags = [tag1, tag6, tag9]
venue36.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipO8mphtjOmzMjQDjcKWRsFY3PfRpFEHpRqn-fs2=s1360-w1360-h1020")
venue37 = Venue.new(title: "Villa Il Garofalo", location: "Florence, Italy", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 670, square_meters: 500, latitude: 43.79396999987547, longitude: 11.280290913493538, user: users.sample)
venue37.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue37.tags = [tag2, tag3, tag10]
venue37.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipOmhm5Rho7LJa8NHqvr1-vb3tWha4tEm0VNQcQA=s1360-w1360-h1020")
venue38 = Venue.new(title: "Medici Villa of Lilliano Wine Estate", location: "Florence, Italy", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 1100, square_meters: 500, latitude: 43.71742008703743, longitude: 11.313192542329027, user: users.sample)
venue38.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue38.tags = [tag2, tag4, tag11]
venue38.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipMY7uyOLTli6WETqBDPFf7Y9bMLedDRF9epFqiz=s1360-w1360-h1020")
venue39 = Venue.new(title: "Tenuta Pinto", location: "Mola di Bari, Italy", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 1100, square_meters: 820, latitude: 41.02900798479108, longitude: 17.051950313493535, user: users.sample)
venue39.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue39.tags = [tag2, tag5, tag10]
venue39.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipO4n5FjjMOkYTeIO79uuyBm-XtgUEQjoxxEVALy=s680-w680-h510")
venue40 = Venue.new(title: "Òran Mór", location: "Glasgow, Scotland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 910, square_meters: 550, latitude: 55.87767765099444, longitude: -4.289845530683899, user: users.sample)
venue40.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue40.tags = [tag2, tag4, tag9]
venue40.save!

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipOOqdsUqqhy90xMW5Xp3SXqfuEhxVk4T-nS_byW=s1360-w1360-h1020")
venue41 = Venue.new(title: "The Spire", location: "Brighton, England", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 320, square_meters: 550, latitude: 50.8177488509114, longitude: -0.11205767606183788, user: users.sample)
venue41.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue41.tags = [tag1, tag4, tag9]
venue41.save!















puts "Creating reviews"

# Venue 1: Café Brauer
Review.create(user: user1, venue: venue1, rating: 5, comment: "Amazing place! Beautiful decor and great service. Definitely coming back.", created_at: '2023-04-07 00:00:00')
Review.create(user: user2, venue: venue1, rating: 4, comment: "Nice venue, but could use more seating space. Otherwise, great experience.", created_at: '2021-02-12 00:00:00')
Review.create(user: user3, venue: venue1, rating: 5, comment: "Perfect for a wedding! The food was incredible and the staff was top-notch.", created_at: '2024-11-20 00:00:00')
Review.create(user: user4, venue: venue1, rating: 3, comment: "The venue is lovely, but parking was a nightmare. Would recommend with caution.")

# Venue 2: Corinthian Houston
Review.create(user: user5, venue: venue2, rating: 5, comment: "Absolutely stunning venue. The architecture is breathtaking, and the staff is fantastic.")
Review.create(user: user6, venue: venue2, rating: 4, comment: "A little pricey, but definitely worth it for the quality. Service was excellent.", created_at: '2020-21-09 00:00:00')
Review.create(user: user7, venue: venue2, rating: 5, comment: "One of the best venues in Houston. I had my engagement party here and everything went smoothly.", created_at: '2018-14-03 00:00:00')
Review.create(user: user8, venue: venue2, rating: 5, comment: "Beautiful place! It made our event unforgettable. Highly recommend.", created_at: '2024-17-07 00:00:00')

# Venue 3: Painted Sky Ballroom, OKC Convention Center
Review.create(user: user9, venue: venue3, rating: 4, comment: "Great venue for large events, but it can feel a bit impersonal. Would still recommend.")
Review.create(user: user10, venue: venue3, rating: 4, comment: "Spacious and elegant, but the acoustics weren't ideal for speeches. Overall, a great experience.")
Review.create(user: user11, venue: venue3, rating: 5, comment: "Perfect venue for a corporate event! The facilities are top-notch and the staff was very professional.")

# Venue 4: Garden Museum
Review.create(user: user12, venue: venue4, rating: 5, comment: "A stunning venue with so much charm. The garden is perfect for photos.")
Review.create(user: user13, venue: venue4, rating: 3, comment: "The venue is beautiful, but the food service was slow. Would visit again, but hope for improvements.")
Review.create(user: user14, venue: venue4, rating: 5, comment: "My dream wedding venue! The venue is gorgeous and the atmosphere is perfect for an elegant event.")

# Venue 5: Aspen & Meursault
Review.create(user: user15, venue: venue5, rating: 5, comment: "Fantastic venue with a cozy yet modern feel. Service was impeccable.", created_at: '2022-08-11 00:00:00')
Review.create(user: user16, venue: venue5, rating: 4, comment: "Great venue, but they could have more outdoor seating. Otherwise, everything was great.", created_at: '2019-10-24 00:00:00')
Review.create(user: user17, venue: venue5, rating: 4, comment: "A beautiful venue but a bit expensive. Service and atmosphere made up for the price.", created_at: '2022-04-10 00:00:00')

# Venue 6: Elizabeth Room - Events at No6
Review.create(user: user18, venue: venue6, rating: 5, comment: "Perfect venue for smaller, intimate events. The atmosphere is warm and inviting.")
Review.create(user: user19, venue: venue6, rating: 4, comment: "Lovely place, but I wish the event space had better lighting for photos.", created_at: '2022-08-02 00:00:00')
Review.create(user: user20, venue: venue6, rating: 5, comment: "The Elizabeth Room was perfect for my birthday party. Small, but absolutely gorgeous.")

# Venue 7: Les Salons
Review.create(user: user1, venue: venue7, rating: 5, comment: "Un espace élégant avec une vue incroyable. Idéal pour des événements sophistiqués. Le personnel était également très serviable.")
Review.create(user: user9, venue: venue7, rating: 4, comment: "Super lieu pour organiser un événement, mais un peu difficile à trouver. Il serait bien d'avoir plus d'indications à l'extérieur.")
Review.create(user: user13, venue: venue7, rating: 5, comment: "L'endroit est parfait pour des conférences et des événements professionnels. Le cadre est moderne et accueillant.", created_at: '2022-12-01 00:00:00')
Review.create(user: user17, venue: venue7, rating: 3, comment: "Le lieu est joli, mais le service était un peu lent et l'organisation laissait à désirer. Un peu déçu de l'ensemble.")
Review.create(user: user27, venue: venue7, rating: 4, comment: "Un endroit charmant, très bien situé. J'ai aimé l'ambiance générale, mais le prix pourrait être un peu plus raisonnable.")

# Venue 8: Forum Fribourg
Review.create(user: user5, venue: venue8, rating: 4, comment: "Un endroit magnifique pour les événements. La salle était bien entretenue et l'équipe était professionnelle. Cependant, le parking était un peu trop cher.")
Review.create(user: user12, venue: venue8, rating: 5, comment: "Excellente expérience. La décoration était superbe et l'ambiance parfaite pour notre événement. Je recommande vivement !", created_at: '2022-04-12 00:00:00')
Review.create(user: user16, venue: venue8, rating: 3, comment: "L'emplacement est idéal, mais la qualité de la nourriture pourrait être améliorée. Les serveurs étaient sympas mais un peu lents.")
Review.create(user: user19, venue: venue8, rating: 4, comment: "Très beau lieu, mais j'ai trouvé le son dans la salle un peu trop fort. Sinon, l'expérience générale était très bonne.", created_at: '2023-12-26 00:00:00')

# Venue 9: The Falls
Review.create(user: user27, venue: venue9, rating: 5, comment: "Absolutely stunning venue! Perfect for any kind of event, especially weddings.")
Review.create(user: user28, venue: venue9, rating: 4, comment: "Great venue with beautiful views, but parking was a bit of a hassle. Everything else was fantastic.")
Review.create(user: user29, venue: venue9, rating: 5, comment: "The Falls is an unforgettable venue. Everything from the decor to the service was perfect.", created_at: '2023-14-07 00:00:00')
Review.create(user: user30, venue: venue9, rating: 5, comment: "We had our company retreat here, and it was amazing! The views alone are worth it.")

# Venue 10: Webster Hall
Review.create(user: user31, venue: venue10, rating: 5, comment: "Had a wonderful experience! The venue is beautiful and the service was excellent.", created_at: '2021-01-07 00:00:00')
Review.create(user: user1, venue: venue10, rating: 3, comment: "The venue was nice, but the lighting wasn’t great for photos. Could be better.")
Review.create(user: user2, venue: venue10, rating: 4, comment: "Lovely place for events, though the acoustics could use some work.")
Review.create(user: user3, venue: venue10, rating: 4, comment: "Great venue with a lot of character. We enjoyed the event here, but the bathrooms need better upkeep.")
Review.create(user: user4, venue: venue10, rating: 5, comment: "One of the best venues I've visited! Everything was perfect.")

puts "Finished creating reviews!"

puts 'Seed finished'
