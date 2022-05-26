class Van < ApplicationRecord
  geocoded_by :address
  belongs_to :user
  has_many :bookings, dependent: :destroy
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
end
