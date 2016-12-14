class Station < OpenStruct

  def self.by_location(location)
    NrelService.request_stations(location).map do |station|
      Station.new(station)
    end
  end
end
