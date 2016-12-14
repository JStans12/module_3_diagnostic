require 'rails_helper'

describe "a user navigates to the root and searches for a zipcode" do
  it "should return top 10 results in a 6 mile radius with the appropriate fuel types" do

    visit root_path
    fill_in('q', with: 80203)
    click_on('Locate')

    expect(page).to have_content("Nearest Alt Fuel Stations")
    # some other expectations
  end
end
