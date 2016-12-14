require 'rails_helper'

describe NrelService do
  context ".request_stations" do
    it "returns an array of 10 json stations" do

      stations = NrelService.request_stations(80203)
      station = stations.first

      expect(stations).to be_an(Array)
      expect(stations.length).to eq(10)
      expect(station).to have_key(:station_name)
      expect(station).to have_key(:distance)
    end
  end
end
