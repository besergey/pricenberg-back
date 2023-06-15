class HardDrive < ApplicationRecord
  has_one :product, as: :description

  def blueprint
    HardDriveBlueprint
  end
end
