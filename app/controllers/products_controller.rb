class ProductsController < ApplicationController
  def index
    @products =Product.all

    if params[:search]
      @products = @products.where('name LIKE ?', "%#{params[:search]}%")
    end

    if params[:category_id]
      @products = @products.where(category_id: params[:category_id])
    end
    
    if params[:min_price] && params[:max_price]
      @products = @products.where(price: params[:min_price]..params[:max_price])
    end

  end

  def show
    @product =Product.find(params[:id])
  end
end
