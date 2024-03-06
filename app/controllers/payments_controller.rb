class PaymentsController < ApplicationController
  def new
    @cart = current_user.cart
  end

  def create
    
  end
end
