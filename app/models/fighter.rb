class Fighter < ApplicationRecord
  has_many :registrations
  has_many :fights, through: :registrations

  validates :health, numericality: { less_than_or_equal_to: 10 }
  validates :attack, numericality: { less_than_or_equal_to: 10 }
  validates :defense, numericality: { less_than_or_equal_to: 10 }

  mount_uploader :avatar, PhotoUploader
end
