class VideocardBlueprint < Blueprinter::Base
  fields :core_count, :threads

  field :min_freq do |processor|
    "#{processor.min_freq}GHz"
  end

  field :max_freq do |processor|
    "#{processor.max_freq}GHz"
  end

  field :tdp do |processor|
    "#{processor.tdp}W"
  end
end
