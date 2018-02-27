class CartsController < ApplicationController

  def show
    @cart = Cart.find_by(id: params[:id])
  end

  def checkout
    cart = Cart.find(params[:id])
    cart.status= "submitted"
    cart.adjust_inventory
    current_user.current_cart = nil
    current_user.save
    cart.save
    redirect_to cart_path(cart)
  end

end
