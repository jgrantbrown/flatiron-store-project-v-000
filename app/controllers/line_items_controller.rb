class LineItemsController < ApplicationController

  def create

    if  @cart = Cart.find_by(user_id: current_user.id)
        @item = Item.find_by(id: params[:item_id])
        current_user.current_cart = @cart
        @cart.add_item(@item.id).save
        current_user.save
        redirect_to cart_path(@cart)
    else
        @cart = Cart.create(user_id: current_user.id)
        @item = Item.find_by(id: params[:item_id])
        current_user.current_cart = @cart
        @cart.add_item(@item.id).save
        current_user.save
        redirect_to cart_path(@cart)
    end

  end

end
