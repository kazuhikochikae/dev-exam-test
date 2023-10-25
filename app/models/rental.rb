class Rental < ApplicationRecord
  validates :name,:rent,:add,:years, presence: true
end
