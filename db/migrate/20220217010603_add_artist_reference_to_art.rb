class AddArtistReferenceToArt < ActiveRecord::Migration[6.1]
  def change
    add_reference :arts, :artist, foreign_key: true
  end
end
