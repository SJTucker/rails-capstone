class ChargesController < ApplicationController
  def index
    @menu_item = MenuItem.find(params[:menu_item_id])

  end




end
