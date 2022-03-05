# == Schema Information
#
# Table name: bids
#
#  id         :bigint           not null, primary key
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  art_id     :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_bids_on_art_id   (art_id)
#  index_bids_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (art_id => arts.id)
#  fk_rails_...  (user_id => users.id)
#
class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :art
end
