class MenuItemsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @menu_items = MenuItem.all
  end
end
