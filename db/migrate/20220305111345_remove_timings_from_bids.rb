class RemoveTimingsFromBids < ActiveRecord::Migration[6.1]
  def change
    remove_column :bids, :start_time
    remove_column :bids, :end_time
    add_column :arts, :auction_end_time, :datetime
  end
end
