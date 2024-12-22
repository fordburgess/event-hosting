require 'open-uri'

puts "deleting users"

Booking.delete_all
Venue.delete_all
User.delete_all

puts "creating user"

def  attach_photo(user, url)
  file = URI.open(url)
  user.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
end

user1 = User.create( email:"fburg6824@gmail.com", password: "123456", name: "Ford Burgess")

attach_photo(user1, "https://media.licdn.com/dms/image/v2/C5603AQGgceg7B8PXsA/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1653968669721?e=1740009600&v=beta&t=INw2Rvm_mjkZ4ZYnj2uPeAULKujodAsH6MaOSVxIDMw" )

users = [user1]
puts "creating venues"

file = URI.open("https://static.showit.co/1200/Zsuke6vBQo6TKAeALs5QrA/89411/cafebrauerballroom.jpg")
venue = Venue.new(title: "Café Brauer", location: "Chicago, Illinois, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 300, square_meters: 150, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open("https://corinthianhouston.net/wp-content/uploads/2019/11/HoustonWeddingVenue-Corinthian-JennyFu-497.jpg")
venue = Venue.new(title: "Corinthian Houston", location: "Houston, Texas, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 600, square_meters: 150, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open("https://okcconventioncenter.com/wp-content/uploads/2021/05/Oklahoma-City-Convention-Center-Ballroom-IV.jpg")
venue = Venue.new(title: "Painted Sky Ballroom, OKC Convention Center", location: "Oklahoma City, Oklahoma, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 250, square_meters: 29874, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open("https://assets.venuecrew.com/wp-content/uploads/2020/11/12183615/Garden-Museum-The-Nave-6.jpg")
venue = Venue.new(title: "Garden Museum", location: "London, UK", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: true, rate: 400, square_meters: 500, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open("https://premierconstructionnews.com/wp-content/uploads/2021/12/lr-Aspen_07_2021-17.jpg")
venue = Venue.new(title: "aspen & meursault", location: "Battersea, London, UK", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 51.475949372429554, longitude: -0.17300124519386556, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open("https://www.tagvenue.com/upload/c3/65/14822-elizabeth-room-room.jpg")
venue = Venue.new(title: "Elizabeth Room - Events at No6", location: "Aldgate, London, UK", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 51.51379894494875, longitude: -0.07225599755978063, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open("https://www.tagvenue.com/upload/c3/65/14822-elizabeth-room-room.jpg")
venue = Venue.new(title: "Elizabeth Room - Events at No6", location: "Aldgate, London, UK", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 51.51379894494875, longitude: -0.07225599755978063, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open("https://media.myswitzerland.com/image/fetch/c_lfill,g_auto,w_3200,h_1800/f_auto,q_80,fl_keep_iptc/https://static.stnet.ch/mice/images/36531-o.jpg")
venue = Venue.new(title: "Les Salons", location: "Geneva, Switzerland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 46.2004502430056, longitude: 6.1419636121733765, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open("https://fribourg.ch/wp-content/uploads/2021/11/fribourg-27742-2e50d1009a094cc21b4729568fdc064417e28d4c_3000.jpg")
venue = Venue.new(title: "Forum Fribourg", location: "Fribourg, Switzerland", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 46.82399650509932, longitude: 7.15276509289182, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open("https://images.squarespace-cdn.com/content/v1/63e1815095586b0aca078b24/23382a0b-f403-4388-ab36-4edb8271f4c4/_DSF7912_cover3.jpg")
venue = Venue.new(title: "The Falls", location: "Los Angeles, California, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 34.04533584139357, longitude: -118.25151001910882, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open("https://www.tagvenue.com/resize/36/4b/fit-900-600;32991-main-hall-room.jpg")
venue = Venue.new(title: "Webster Hall", location: "San Francisco, California, USA", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", featured: false, rate: 400, square_meters: 500, latitude: 37.79016822911196, longitude: -122.43200617722154, user: users.sample)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

puts 'Seed finished'
