require 'open-uri'

puts "deleting users"

Booking.delete_all
Review.delete_all
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

puts "all users created"

attach_photo(user1, "https://media.licdn.com/dms/image/v2/C5603AQGgceg7B8PXsA/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1653968669721?e=1740009600&v=beta&t=INw2Rvm_mjkZ4ZYnj2uPeAULKujodAsH6MaOSVxIDMw" )

users = [user1]
puts "creating venues"

file = URI.open("https://static.showit.co/1200/Zsuke6vBQo6TKAeALs5QrA/89411/cafebrauerballroom.jpg")
venue1 = Venue.new(title: "Café Brauer", location: "Chicago, Illinois, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 300, square_meters: 150, user: users.sample)
venue1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue1.save!

file = URI.open("https://corinthianhouston.net/wp-content/uploads/2019/11/HoustonWeddingVenue-Corinthian-JennyFu-497.jpg")
venue2 = Venue.new(title: "Corinthian Houston", location: "Houston, Texas, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 600, square_meters: 150, user: users.sample)
venue2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue2.save!

file = URI.open("https://okcconventioncenter.com/wp-content/uploads/2021/05/Oklahoma-City-Convention-Center-Ballroom-IV.jpg")
venue3 = Venue.new(title: "Painted Sky Ballroom, OKC Convention Center", location: "Oklahoma City, Oklahoma, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 250, square_meters: 29874, user: users.sample)
venue3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue3.save!

file = URI.open("https://assets.venuecrew.com/wp-content/uploads/2020/11/12183615/Garden-Museum-The-Nave-6.jpg")
venue4 = Venue.new(title: "Garden Museum", location: "London, UK", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 400, square_meters: 500, user: users.sample)
venue4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue4.save!

file = URI.open("https://premierconstructionnews.com/wp-content/uploads/2021/12/lr-Aspen_07_2021-17.jpg")
venue5 = Venue.new(title: "aspen & meursault", location: "Battersea, London, UK", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 51.475949372429554, longitude: -0.17300124519386556, user: users.sample)
venue5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue5.save!

file = URI.open("https://www.tagvenue.com/upload/c3/65/14822-elizabeth-room-room.jpg")
venue6 = Venue.new(title: "Elizabeth Room - Events at No6", location: "Aldgate, London, UK", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 51.51379894494875, longitude: -0.07225599755978063, user: users.sample)
venue6.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue6.save!

file = URI.open("https://www.tagvenue.com/upload/c3/65/14822-elizabeth-room-room.jpg")
venue7 = Venue.new(title: "Elizabeth Room - Events at No6", location: "Aldgate, London, UK", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 51.51379894494875, longitude: -0.07225599755978063, user: users.sample)
venue7.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue7.save!

file = URI.open("https://media.myswitzerland.com/image/fetch/c_lfill,g_auto,w_3200,h_1800/f_auto,q_80,fl_keep_iptc/https://static.stnet.ch/mice/images/36531-o.jpg")
venue8 = Venue.new(title: "Les Salons", location: "Geneva, Switzerland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 46.2004502430056, longitude: 6.1419636121733765, user: users.sample)
venue8.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue8.save!

file = URI.open("https://fribourg.ch/wp-content/uploads/2021/11/fribourg-27742-2e50d1009a094cc21b4729568fdc064417e28d4c_3000.jpg")
venue9 = Venue.new(title: "Forum Fribourg", location: "Fribourg, Switzerland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 46.82399650509932, longitude: 7.15276509289182, user: users.sample)
venue9.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue9.save!

file = URI.open("https://images.squarespace-cdn.com/content/v1/63e1815095586b0aca078b24/23382a0b-f403-4388-ab36-4edb8271f4c4/_DSF7912_cover3.jpg")
venue10 = Venue.new(title: "The Falls", location: "Los Angeles, California, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 34.04533584139357, longitude: -118.25151001910882, user: users.sample)
venue10.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue10.save!

file = URI.open("https://www.tagvenue.com/resize/36/4b/fit-900-600;32991-main-hall-room.jpg")
venue11 = Venue.new(title: "Webster Hall", location: "San Francisco, California, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 37.79016822911196, longitude: -122.43200617722154, user: users.sample)
venue11.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue11.save!

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
