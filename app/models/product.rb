class Product < ApplicationRecord
  belongs_to :category
  belongs_to :description, polymorphic: true
  has_many :prices

  validates :name, presence: true

  scope :by_category, ->(category_id) { where(':category_id IS NOT NULL AND category_id = :category_id or :category_id IS NULL', { category_id: category_id}) }

  scope :search, ->(query) { where('name ILIKE ?', "%#{query}%") }

  def self.product_description_types
    %w(HardDrive MemoryKit Processor SolidDrive Videocard).freeze
  end
end
