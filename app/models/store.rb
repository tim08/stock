class Store < ApplicationRecord
  has_many :products
  has_many :history_transfer_of_products
end
