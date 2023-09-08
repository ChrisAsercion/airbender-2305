require 'rails_helper'

RSpec.describe 'Nation Search', type: :feature do
  describe 'nation search feature' do
    scenario 'I selected fire nation from the drop down list' do
      visit root_path
      
      select "Fire Nation", from: 'nation'
      click_on('Search For Members')
      
      expect(current_path).to eq(search_path)
      
      expect(page).to have_content("Number of people associated with this nation: 97")
      expect(page).to have_content("name: Azula")
      expect(page).to have_content("affiliation = Azula's team (formerly)")
      expect(page).to have_content("allies = Ozai Zuko")
      expect(page).to have_content("enemies = Iroh Zuko")

    end
  end
end