class HardDriveBlueprint < Blueprinter::Base
  fields :form_factor

  field :capacity do |hard_drive|
    "#{hard_drive.capacity} GB"
  end

  field :cache do |hard_drive|
    "#{hard_drive.cache} MB"
  end
end
