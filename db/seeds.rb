# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@corner_market = Supermarket.create!(name: 'Corner Market', location: '123 Food St.')
@kroger = Supermarket.create!(name: 'Kroger', location: '123 Fresh Rd.')

@item1 = @corner_market.items.create!(name: 'Banana', price: 1)
@item2 = @corner_market.items.create!(name: 'Cereal', price: 4)
@item3 = @corner_market.items.create!(name: 'Juice', price: 2)
@item4 = @kroger.items.create!(name: 'Milk', price: 2)
@item5 = @kroger.items.create!(name: 'Eggs', price: 3)
@item6 = @kroger.items.create!(name: 'Hot Cheetos', price: 4)
@item7 = @kroger.items.create!(name: 'Ice Cream', price: 3)

@customer1 = Customer.create!(name: 'Sally Shopper')
@customer2 = Customer.create!(name: 'Sam Shopper')

@customer_item1 = CustomerItem.create!(customer: @customer1, item: @item1)
@customer_item2 = CustomerItem.create!(customer: @customer1, item: @item4)
@customer_item3 = CustomerItem.create!(customer: @customer1, item: @item5)
@customer_item4 = CustomerItem.create!(customer: @customer1, item: @item7)
@customer_item5 = CustomerItem.create!(customer: @customer2, item: @item4)
@customer_item6 = CustomerItem.create!(customer: @customer2, item: @item6)
@customer_item7 = CustomerItem.create!(customer: @customer2, item: @item7)
@customer_item8 = CustomerItem.create!(customer: @customer2, item: @item2)
@customer_item9 = CustomerItem.create!(customer: @customer1, item: @item3)
