class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :location
      t.text :bio
      t.text :description

      t.timestamps
    end
  end
end
