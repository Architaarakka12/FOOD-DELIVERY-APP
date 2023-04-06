class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :items
  has_many :orders

  has_many :order_items, through: :orders, source: :items

end
