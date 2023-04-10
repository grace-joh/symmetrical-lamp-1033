require 'rails_helper'

RSpec.describe 'the Supermarket show page' do
  before(:each) do
    test_data

    visit "/supermarkets/#{@kroger.id}"
  end

  describe 'Extension' do
    it 'displays its name' do
      expect(page).to have_content('Kroger')
    end

    it 'displays a list of unique customers that have shopped there' do
      expect(page).to have_content('Customers')
      expect(page).to have_content(@customer1.name)
      expect(page).to have_content(@customer2.name)
    end
  end
end
