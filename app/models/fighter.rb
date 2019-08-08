class Fighter < ApplicationRecord
  has_many :registrations
  has_many :fights, through: :registrations
  mount_uploader :avatar, PhotoUploader
end
