class CustomersController < ApplicationController
  def create
    @customer = current_user.build_customer(customer_params)
    if @customer.save_with_payment
      redirect_to menu_items_path, :notice => "Thank you for Registering!"
    else
      render :new
    end
  end

  def customer_params
    params.require(:customer).permit(:stripe_card_token)
  end
end
