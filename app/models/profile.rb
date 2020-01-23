class Profile < ApplicationRecord
  belongs_to :user
  has_one :profiles
  has_many_attached :profile_image_id
end
