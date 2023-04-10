class Customers::ItemsController < ApplicationController
  def create
    customer = Customer.find(params[:id])
    item = Item.find(params[:item_id])
    CustomerItem.create(customer: customer, item: item)
    redirect_to "/customers/#{customer.id}"
  end
end
