class Product < ApplicationRecord
  validates :name, presence: true

  # Optional numeric field
  validates :price, numericality: true, allow_nil: true

  # Optional string fields
  validates :description, :image_url, :category, length: { minimum: 1 }, allow_nil: true
end