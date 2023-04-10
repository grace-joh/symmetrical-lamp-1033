class Supermarket < ApplicationRecord
  has_many :items
  has_many :customers, through: :items

  def customers_list
    customers.distinct
  end
end
