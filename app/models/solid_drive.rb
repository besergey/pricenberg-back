class SolidDrive < ApplicationRecord
  has_one :product, as: :description

  def blueprint
    SolidDriveBlueprint
  end
end
