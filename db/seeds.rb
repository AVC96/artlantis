# def seed_image(file_name)
#   File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}.jpg"))
# end

Art.destroy_all
Artist.destroy_all
User.destroy_all

User.create!(email: "audrey@artlantis.com", password: "123456")
User.create!(email: "molly@artlantis.com", password: "123456")
User.create!(email: "raj@artlantis.com", password: "123456")

2.times do
  User.create!(email: Faker::Internet.email, password: "123456")
end

5.times do
  artist = Artist.create!(name: Faker::Artist.unique.name, bio: Faker::Hipster.paragraph,
                          description: Faker::Hipster.paragraph, location: Faker::Address.city)
  5.times do
    art = Art.new(cost: rand(10..100), location: Faker::Address.full_address, description: Faker::Hipster.paragraphs[0],
                  artist_id: artist.id)
    image = URI.open("https://source.unsplash.com/random/640x960/?art")
    art.images.attach(io: image, filename: "art.jpg")
    art.save!
  end
end
