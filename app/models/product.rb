class Product < ApplicationRecord
  belongs_to :category
  belongs_to :description, polymorphic: true

  validates :name, presence: true

  scope :by_category, ->(category_id) { where(category_id: category_id) }
end
