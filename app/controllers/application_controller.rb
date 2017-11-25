class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :setup_cart
  
  def setup_cart
    # if the user already has a cart, give them the cart
    # if not, set up a new cart
    # store the cart in a session
    if session[:cart].present?
      @current_order = Order.new(session[:cart])
    else
      session[:cart] = Order.new
      @current_order = session[:cart]
    end    
    
  end
  
  
end
