class Profile < ApplicationRecord
  belongs_to :users
  has_one_attached :profile_image_id
end
