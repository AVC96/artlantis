# DESTROY ALL THE DATA
puts "Deleting everything......"
Bid.destroy_all
Favourite.destroy_all
Art.destroy_all
Artist.destroy_all
User.destroy_all

# CREATE YOUR USER ACCOUNTS (SO YOU DON'T NEED TO SIGN UP EACH TIME)
puts "Creating a bunch of users..."
User.create!(email: "audrey@artlantis.com", password: "123456")
User.create!(email: "molly@artlantis.com", password: "123456")
User.create!(email: "raj@artlantis.com", password: "123456")
User.create!(email: "mollygao17@gmail.com", password: "123456")
# CREATE 2 FAKE USERS
puts "Creating some 2 fake users..."
2.times do
  User.create!(email: Faker::Internet.email, password: "123456")
end

# CREATE 5 ARTISTS
puts "Creating some artists..."
9.times do
  artist = Artist.new(name: Faker::Artist.unique.name, bio: Faker::Hipster.paragraph,
                      description: Faker::Hipster.paragraph, location: Faker::Address.city)
  # LOAD A RANDOM ART IMAGE FROM UNSPLASH
  artist_image = URI.open("https://source.unsplash.com/random/640x960/?artist")
  # ATTACH THE IMAGE (.image instead of .images since we use
  # has_one_attached in the model)
  artist.image.attach(io: artist_image, filename: 'artist.jpg')
  artist.save!

  # CREATE 5 ARTWORKS FOR EACH ARTIST
  puts "Creating art work for #{artist.name}"
  3.times do
    art = Art.new(cost: rand(10..100), name: Faker::Hipster.words(number: 3).join(" "), location: Faker::Address.city, description: Faker::Hipster.paragraph,
                  artist_id: artist.id, category: ["Pop art", "Classical", "Contemporary", "Mosaics"].sample, auction_end_time: Faker::Date.forward(days: 14))
    # LOAD A RANDOM ART IMAGE FROM UNSPLASH
    image = URI.open("https://source.unsplash.com/random/640x960/?art")
    # ATTACH THE IMAGE (.images instead of .image since we use
    # has_many_attached in the model)
    art.images.attach(io: image, filename: "art.jpg")
    art.save!
  end
end

audrey = Artist.new(name: "Audrey", bio: "French and american born artist, quirky style passion for popping colours. Inspired by the moon... Selenophile since birth. Located in London area, surrounded by inspiring developers of artworks.",
                    description: Faker::Hipster.paragraph, location: Faker::Address.city)
# LOAD A RANDOM ART IMAGE FROM UNSPLASH
artist_image = URI.open("https://source.unsplash.com/random/640x960/?artist")
# ATTACH THE IMAGE (.image instead of .images since we use
# has_one_attached in the model)
audrey.image.attach(io: artist_image, filename: 'artist.jpg')
audrey.save!

8.times do
  art = Art.new(cost: rand(10..100), name: Faker::Hipster.words(number: 3).join(" "), location: Faker::Address.city, description: "",
                artist_id: audrey.id, category: ["Pop art", "Classical", "Contemporary", "Mosaics"].sample, auction_end_time: Faker::Date.forward(days: 14))
  # LOAD A RANDOM ART IMAGE FROM UNSPLASH
  image = URI.open("https://source.unsplash.com/random/640x960/?art")
  # ATTACH THE IMAGE (.images instead of .image since we use
  # has_many_attached in the model)
  art.images.attach(io: image, filename: "art.jpg")
  art.save!
end

puts "Creating some bids"
40.times do
  artwork = Art.all.sample
  Bid.create!(art: artwork, user: User.all.sample, price: artwork.cost + rand(10..50))
end

art = Art.new(cost: rand(10..100), name: "My first lullaby", location: "London, UK", description: "painted in my mom's garden on a beautiful winter day. It was raining. This is a sustainable art piece, rain was used in substitution to tap water for brushes.",
              artist_id: audrey.id, category: ["Pop art", "Classical", "Contemporary", "Mosaics"].sample, auction_end_time: Faker::Date.forward(days: 14))
# LOAD A RANDOM ART IMAGE FROM UNSPLASH
image = URI.open("https://res.cloudinary.com/drxlrmav3/image/upload/v1647556546/lullaby_wqa2ns.png")
# ATTACH THE IMAGE (.images instead of .image since we use
# has_many_attached in the model)
art.images.attach(io: image, filename: "art.jpg")
art.save!

art2 = Art.new(cost: rand(10..100), name: "On the Wagon", location: "Paris, France", description: "Yet again, here we are. But are we? We're not. This art piece is meant to remind you of all the late nights on rails with Ruby, my dear Ruby. My ruby can be your ruby, she's often on le wagon of the rails.",
               artist_id: audrey.id, category: ["Pop art", "Classical", "Contemporary", "Mosaics"].sample, auction_end_time: Faker::Date.forward(days: 14))
# LOAD A RANDOM ART IMAGE FROM UNSPLASH
image2 = URI.open("https://res.cloudinary.com/drxlrmav3/image/upload/v1647556544/wagon_xuxcm8.png")
# ATTACH THE IMAGE (.images instead of .image since we use
# has_many_attached in the model)
art2.images.attach(io: image2, filename: "art.jpg")
art2.save!
