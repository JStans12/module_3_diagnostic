require 'rails_helper'

describe "a user navigates to the root and searches for a zipcode" do
  it "should return top 10 results in a 6 mile radius with the appropriate fuel types" do
    VCR.use_cassette("search by location") do

      visit root_path
      fill_in('location', with: 80203)
      click_on('Locate')

      expect(page).to have_content("Nearest Alt Fuel Stations")
      expect(page).to have_content("Address: 800 Acoma St")
      expect(page).to have_content("Access Times: 24 hours daily; pay lot")
      expect(page).to have_content("City of Denver - Denver Justice Center Garage")
    end
  end
end
