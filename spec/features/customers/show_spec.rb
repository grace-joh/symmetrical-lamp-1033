require 'rails_helper'

RSpec.describe 'the Customer show page' do
  before(:each) do
    test_data

    visit "customers/#{@customer1.id}"
  end

  describe 'User Story 1' do
    it 'displays the customers name and a list of items and attributes' do
      expect(page).to have_content(@customer1.name)

      within("div#item-#{@item1.id}") do
        expect(page).to have_content(@item1.name)
        expect(page).to have_content("Price: $#{@item1.price}")
        expect(page).to have_content("Bought at: #{@item1.supermarket_name}")
      end

      within("div#item-#{@item4.id}") do
        expect(page).to have_content(@item4.name)
        expect(page).to have_content("Price: $#{@item4.price}")
        expect(page).to have_content("Bought at: #{@item4.supermarket_name}")
      end
    end
  end
end
