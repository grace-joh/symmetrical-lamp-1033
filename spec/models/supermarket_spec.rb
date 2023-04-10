require 'rails_helper'

RSpec.describe Supermarket, type: :model do
  describe 'relationships' do
    it { should have_many :items }
    it { should have_many(:customers).through(:items) }
  end

  describe 'instance methods' do
    before(:each) do
      test_data
    end

    describe '#customers_list' do
      it 'returns an array of distinct customers that have purchased its items' do
        @trader_joes = Supermarket.create!(name: 'Trader Joes', location: '123 Trade Ave.')
        @item8 = @trader_joes.items.create!(name: 'Cheese', price: 2)
        @customer_item10 = CustomerItem.create!(customer: @customer1, item: @item8)

        expect(@corner_market.customers_list).to eq([@customer1, @customer2])
        expect(@trader_joes.customers_list).to eq([@customer1])
      end
    end
  end
end
