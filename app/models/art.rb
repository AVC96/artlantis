# == Schema Information
#
# Table name: arts
#
#  id               :bigint           not null, primary key
#  auction_end_time :datetime
#  category         :string
#  cost             :integer
#  description      :string
#  image            :string
#  location         :string
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  artist_id        :bigint
#
# Indexes
#
#  index_arts_on_artist_id  (artist_id)
#
# Foreign Keys
#
#  fk_rails_...  (artist_id => artists.id)
#
class Art < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :artist

  # IMAGE ATTACHMENTS (MULTIPLE POSSIBLE WITH HAS_MANY_ATTACHED)
  has_many_attached :images

  has_many :bids
  # VALIDATIONS
  # WHICH FIELDS ARE REQUIRED FOR A SINGLE ARTWORK?

  has_many :favourites
end
