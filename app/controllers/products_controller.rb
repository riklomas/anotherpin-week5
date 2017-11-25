class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
    
    @order_item = @current_order.order_items.find_by(product_id: @product.id)
    
    if @order_item.nil?
      @order_item = @current_order.order_items.new(product_id: @product.id, quantity: 1)
    end
  end
  
end
