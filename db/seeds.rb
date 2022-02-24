# DESTROY ALL THE DATA
puts "Deleting everything......"
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
5.times do
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
  10.times do
    art = Art.new(cost: rand(10..100), name: Faker::Hipster.words(number: 3).join(" "), location: Faker::Address.city, description: Faker::Hipster.paragraph,
                  artist_id: artist.id, category: Faker::Hipster.word)
    # LOAD A RANDOM ART IMAGE FROM UNSPLASH
    image = URI.open("https://source.unsplash.com/random/640x960/?art")
    # ATTACH THE IMAGE (.images instead of .image since we use
    # has_many_attached in the model)
    art.images.attach(io: image, filename: "art.jpg")
    art.save!
  end
end
