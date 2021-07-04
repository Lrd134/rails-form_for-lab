class SchoolClass < ApplicationRecord
  validates :room_number, numericality: { only_integer: true }
end
