class Order < ApplicationRecord
  belongs_to :menu

  has_and_belongs_to_many :items

end
