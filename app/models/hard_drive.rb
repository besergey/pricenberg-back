class HardDrive < ApplicationRecord
  has_one :product, as: :description
end
