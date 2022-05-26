class Van < ApplicationRecord
  geocoded_by :address
  belongs_to :user
  has_many :bookings
  after_validation :geocode, if: :will_save_change_to_address?
end
