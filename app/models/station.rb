class Station
  def initialize(data)
    @data = data
    @fuel_type_codes = {"ELEC": "Electric", "LPG": "Propane"}
  end

  def name
    @data[:station_name]
  end

  def address
    @data[:street_address]
  end

  def fuel_type
    code = @data[:fuel_type_code]
    @fuel_type_codes[code.to_sym]
  end

  def access_times
    @data[:access_days_time]
  end

  def distance
    @data[:distance]
  end

  def self.by_location(location)
    NrelService.request_stations(location).map do |station|
      Station.new(station)
    end
  end
end
