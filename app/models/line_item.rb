class LineItem < ApplicationRecord
  
  belongs_to :order, required: false
  belongs_to :product
  belongs_to :cart

  # validates :title, uniqueness: true
  def total_price
	product.price * quantity
  end
end
