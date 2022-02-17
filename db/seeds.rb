# DESTROY ALL THE DATA
Art.destroy_all
Artist.destroy_all
User.destroy_all

# CREATE YOUR USER ACCOUNTS (SO YOU DON'T NEED TO SIGN UP EACH TIME)
User.create!(email: "audrey@artlantis.com", password: "123456")
User.create!(email: "molly@artlantis.com", password: "123456")
User.create!(email: "raj@artlantis.com", password: "123456")

# CREATE 2 FAKE USERS
2.times do
  User.create!(email: Faker::Internet.email, password: "123456")
end

# CREATE 5 ARTISTS
5.times do
  artist = Artist.new(name: Faker::Artist.unique.name, bio: Faker::Hipster.paragraph,
                      description: Faker::Hipster.paragraph, location: Faker::Address.city)
  # LOAD A RANDOM ART IMAGE FROM UNSPLASH
  artist_image = URI.open("https://source.unsplash.com/random/640x960/?artist")
  # ATTACH THE IMAGE (.images instead of .image since we use
  # has_many_attached in the model)
  artist.image.attach(io: artist_image, filename: 'artist.jpg')
  artist.save!
  # CREATE 5 ARTWORKS FOR EACH ARTIST
  5.times do
    art = Art.new(cost: rand(10..100), location: Faker::Address.full_address, description: Faker::Hipster.paragraphs[0],
                  artist_id: artist.id, type: Faker::Hipster.word)
    # LOAD A RANDOM ART IMAGE FROM UNSPLASH
    image = URI.open("https://source.unsplash.com/random/640x960/?art")
    # ATTACH THE IMAGE (.images instead of .image since we use
    # has_many_attached in the model)
    art.images.attach(io: image, filename: "art.jpg")
    art.save!
  end
end
