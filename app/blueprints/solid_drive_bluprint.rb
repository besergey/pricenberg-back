class SolidDriveBlueprint < Blueprinter::Base
  fields :interface

  field :capacity do |solid_drive|
    "#{solid_drive.capacity} GB"
  end

  field :read_speed do |solid_drive|
    "#{solid_drive.read_speed} MB/s"
  end

  field :write_speed do |solid_drive|
    "#{solid_drive.write_speed} MB/s"
  end
end
