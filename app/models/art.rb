# == Schema Information
#
# Table name: arts
#
#  id          :bigint           not null, primary key
#  cost        :integer
#  description :string
#  image       :string
#  location    :string
#  type        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_arts_on_user_id  (user_id)
#
class Art < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :user

  # VALIDATIONS
  # WHICH FIELDS ARE REQUIRED FOR A SINGLE ARTWORK?
end
