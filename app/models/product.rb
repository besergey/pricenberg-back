class Product < ApplicationRecord
  belongs_to :category
  belongs_to :description, polymorphic: true
  
  %i(processor solid_drive memory_kit hard_drive videocard).each do |type|
    belongs_to type, -> { where(products: { description_type: type.to_s.camelize }) }, foreign_key: 'description_id'
  end

  has_many :prices

  validates :name, presence: true

  scope :by_category, ->(category_id) { where(':category_id IS NOT NULL AND category_id = :category_id or :category_id IS NULL', { category_id: category_id}) }
  scope :by_price, -> (price_from, price_to) {
    if price_from && !price_to
      joins(:prices).where("prices.price >= #{price_from}")
    end

    if !price_from && price_to
      joins(:prices).where("prices.price <= #{price_to}")
    end

    if price_from && price_to
      joins(:prices).where("prices.price >= #{price_from} AND prices.price <= #{price_to}")
    end
  }

  scope :by_freq, -> (freq_from, freq_to) {
    if freq_from && !freq_to
      joins(:videocard).where("videocards.freq >= #{freq_from}")
    end

    if !freq_from && freq_to
      joins(:videocard).where("videocards.freq <= #{freq_to}")
    end

    if freq_from && freq_to
      joins(:videocard).where("videocards.freq >= #{freq_from} AND videocards.freq <= #{freq_to}")
    end
  }

  scope :by_min_freq, -> (min_freq_from, min_freq_to) {
    if min_freq_from && !min_freq_to
      joins(:processor).where("processors.min_freq >= #{min_freq_from}")
    end

    if !min_freq_from && min_freq_to
      joins(:processor).where("processors.min_freq <= #{min_freq_to}")
    end

    if min_freq_from && min_freq_to
      joins(:processor).where("processors.min_freq >= #{min_freq_from} AND processors.min_freq <= #{min_freq_to}")
    end
  }

  scope :by_core_count, -> (core_count_from, core_count_to) {
    if core_count_from && !core_count_to
      joins(:processor).where("processors.core_count >= #{core_count_from}")
    end

    if !core_count_from && core_count_to
      joins(:processor).where("processors.core_count <= #{core_count_to}")
    end

    if core_count_from && core_count_to
      joins(:processor).where("processors.core_count >= #{core_count_from} AND processors.core_count <= #{core_count_to}")
    end
  }

  scope :by_memory_type, -> (memory_type) {
    if memory_type
      joins(:memory_kit).where("memory_kits.memory_type LIKE ?", memory_type)
    end
  }

  scope :by_capacity, -> (capacity_from, capacity_to) {
    if capacity_from && !capacity_to
      joins(:processor).where("processors.core_count >= #{capacity_from}")
    end

    if !capacity_from && capacity_to
      joins(:processor).where("processors.core_count <= #{capacity_to}")
    end

    if capacity_from && capacity_to
      joins(:processor).where("processors.core_count >= #{capacity_from} AND processors.core_count <= #{capacity_to}")
    end
  }

  scope :search, ->(query) { where('name ILIKE ?', "%#{query}%") }

  def self.product_description_types
    %w(HardDrive MemoryKit Processor SolidDrive Videocard).freeze
  end
end
