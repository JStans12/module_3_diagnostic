class NrelService

  def self.request_stations(location)
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['nrel_key']}&location=#{location}&radius=6&fuel_type=ELEC,LPG&limit=10")
    JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
  end
end
