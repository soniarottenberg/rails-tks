class Fight < ApplicationRecord
  has_many :registrations
  has_many :fighters, through: :registrations
end
