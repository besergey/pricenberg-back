class MemoryKit < ApplicationRecord
  has_one :product, as: :description

  def blueprint
    MemoryKitBlueprint
  end
end
