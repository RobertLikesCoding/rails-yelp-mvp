class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5, message: "must be between 0 and 5" }
end
