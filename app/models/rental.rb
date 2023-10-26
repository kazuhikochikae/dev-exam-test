class Rental < ApplicationRecord
  validates :name,:rent,:add,:years, presence: true
  has_many :stations
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
end
