class Videocard < ApplicationRecord
  has_one :product, as: :description
end
