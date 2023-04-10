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

  describe 'User Story 2' do
    it 'has a form to add an item to the customers list' do
      within('div#add-item') do
        expect(page).to have_content('Add Item')
        expect(page).to have_field('Item ID')
        expect(page).to have_button("Add Item to #{@customer1.name}'s List")
      end
    end

    it 'can add an item to the list' do
      expect(page).to_not have_content(@item2.name)

      within('div#add-item') do
        fill_in('Item ID', with: @item2.id)
        click_on("Add Item to #{@customer1.name}'s List")
      end

      expect(current_path).to eq("/customers/#{@customer1.id}")
      expect(page).to have_content(@item2.name)
    end
  end
end
