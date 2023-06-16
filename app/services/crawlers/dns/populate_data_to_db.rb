class Crawlers::Dns::PopulateDataToDb
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def call
    data.each do |k,v|
    end
  end
end