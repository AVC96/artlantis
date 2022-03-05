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
require "test_helper"

class ArtTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
