class MemoryKitBlueprint < Blueprinter::Base
  fields :timing, :module_count, :form_factor, :memory_type

  field :speed do |memory_kit|
    "#{memory_kit.speed} MGz"
  end

  field :capacity do |memory_kit|
    "#{memory_kit.capacity} GB"
  end
end
