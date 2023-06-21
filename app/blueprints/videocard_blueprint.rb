class VideocardBlueprint < Blueprinter::Base
  fields :memory_type, :interface, :additional_properties

  field :freq do |videocard|
    "#{videocard.freq}GHz"
  end

  field :memory_size do |videocard|
    "#{videocard.memory_size} GB"
  end
end
