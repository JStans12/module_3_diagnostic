class SearchController < ApplicationController

  def index
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['nrel_key']}&location=#{params[:location]}&radius=6&fuel_type=ELEC,LPG&limit=10")
  end

end
