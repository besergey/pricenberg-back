class MemoryKit < ApplicationRecord
  has_one :product, as: :description
end
