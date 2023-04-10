require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'relationships' do
    it { should belong_to :supermarket }
    it { should have_many :customer_items }
    it { should have_many(:customers).through(:customer_items) }
  end

  describe 'instance methods' do
    before(:each) do
      test_data
    end

    describe '#supermarket_name' do
      it 'returns the name of the supermarket the item is at' do
        expect(@item1.supermarket_name).to eq('Corner Market')
        expect(@item7.supermarket_name).to eq('Kroger')
      end
    end

    describe '#customer_purchase_count' do
      it 'counts the number of distinct customers who purchased it' do
        expect(@item1.customer_purchase_count).to eq(1)
        expect(@item7.customer_purchase_count).to eq(2)
      end
    end
  end
end
