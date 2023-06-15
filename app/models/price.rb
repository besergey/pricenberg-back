class Price < ApplicationRecord
  belongs_to :product

  validates :price, :shop, :link, presence: true
end
