class Price < ApplicationRecord
  belongs_to :product

  enum shop: [:dns, :mvideo, :eldorado]

  validates :price, :shop, :link, presence: true
end
