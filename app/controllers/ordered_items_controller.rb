class OrderedItemsController < ApplicationController
  def index
    @ordered_items = OrderedItem.all
  end

  def new
    @ordered_item = OrderedItem.new
  end

  def create
    @ordered_item = current_user.ordered_items.build(ordered_item_params)
    if @ordered_item.save
      flash[:notice] = "Your order has been completed"
      redirect_to charges_path({:menu_item_id => ordered_item_params[:menu_item_id]})
    else
      flash[:alert] = "Your order failed to go through"
      redirect_to menu_items_path
    end
    Stripe::Charge.create(
      :amount => (@ordered_item.menu_item.price * 100).to_i, # in cents
      :currency => "usd",
      :customer => current_user.customer.stripe_customer_token
    )
  end

  def ordered_item_params
    params.require(:ordered_item).permit(:menu_item_id)
  end

  def destroy
    puts params.to_s
    @ordered_item = OrderedItem.find(params[:id])
    @ordered_item.destroy!
    redirect_to ordered_items_path
  end
end
