class Processor < ApplicationRecord
  has_one :product, as: :description

  def blueprint
    ProcessorBlueprint
  end
end
