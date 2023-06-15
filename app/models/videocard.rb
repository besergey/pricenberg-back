class Videocard < ApplicationRecord
  has_one :product, as: :description

  def blueprint
    VideocardBlueprint
  end
end
