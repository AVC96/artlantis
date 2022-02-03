class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.integer :cost
      t.string :location
      t.string :type
      t.string :description
      t.string :image
      t.references :user

      t.timestamps
    end
  end
end
