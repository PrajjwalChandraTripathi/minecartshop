class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy

  def total_amount
    cart_items.sum { |item| item.product.price}
  end
end
