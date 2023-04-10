class SupermarketsController < ApplicationController
  def show
    @supermarket = Supermarket.find(params[:id])
    @customers = @supermarket.customers_list
  end
end
