class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.references :user, null: false, foreign_key: true
      t.references :art, null: false, foreign_key: true
      t.integer :price
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps
    end
  end
end
