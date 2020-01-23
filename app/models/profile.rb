class Profile < ApplicationRecord
  belongs_to :users
  has_many_attached :profile_image_id
end
