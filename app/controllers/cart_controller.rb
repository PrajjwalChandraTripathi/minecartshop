class CartController < ApplicationController
  def index
    @cart = current_user.cart
    @cart_items = @cart&.cart_items || []
  end
end
