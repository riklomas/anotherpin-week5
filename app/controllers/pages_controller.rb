class PagesController < ApplicationController
  
  def home
    @featured_products = Product.where(is_featured: true)
  end
  
  def info
  end
  
end
