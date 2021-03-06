require 'rails_helper'

describe Station do
  context ".by_location" do
    it "returns an array of 10 station objects" do
      VCR.use_cassette(".by_location") do

        stations = Station.by_location(80203)
        station = stations.first

        expect(stations).to be_an(Array)
        expect(stations.length).to eq(10)
        expect(station).to be_an(Object)
        expect(station).to respond_to(:name)
        expect(station).to respond_to(:distance)
      end
    end
  end
end
