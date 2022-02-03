class Art < ApplicationRecord
  has_many :favourites
  belongs_to :user
end
