require 'rails_helper'

RSpec.describe 'the Items index page' do
  before(:each) do
    test_data

    visit '/items'
  end

  describe 'User Story 3' do
    it 'displays all items with name, price, supermarket, and count of customers who purchased it' do
      within("div#item-#{@item1.id}") do
        expect(page).to have_content(@item1.name)
        expect(page).to have_content("Price: $#{@item1.price}")
        expect(page).to have_content("In Stock at #{@item1.supermarket_name}")
        expect(page).to have_content("Purchased by #{@item1.customer_purchase_count} customers")
      end

      within("div#item-#{@item7.id}") do
        expect(page).to have_content(@item7.name)
        expect(page).to have_content("Price: $#{@item7.price}")
        expect(page).to have_content("In Stock at #{@item7.supermarket_name}")
        expect(page).to have_content("Purchased by #{@item7.customer_purchase_count} customers")
      end
    end
  end
end
