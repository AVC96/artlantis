# == Schema Information
#
# Table name: artists
#
#  id          :bigint           not null, primary key
#  bio         :text
#  description :text
#  location    :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Artist < ApplicationRecord
  has_many :arts
  has_one_attached :image
end
