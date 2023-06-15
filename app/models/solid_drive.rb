class SolidDrive < ApplicationRecord
  has_one :product, as: :description
end
