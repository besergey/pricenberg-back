class Processor < ApplicationRecord
  has_one :product, as: :description
end
