class WaitingCustomersController < ApplicationController
  def index
    @waiting_customers = WaitingCustomer.all
  end

  def new
    @waiting_customer = WaitingCustomer.new
  end

  def create
    user = User.find_by_email(waiting_customer_params[:email])

    @waiting_customer = user.create_waiting_customer(waiting_customer_params)
    user.update(:table_number => waiting_customer_params[:table_number], :waiting_customer_id => waiting_customer_params[:waiting_customer_id])
    redirect_to waiting_customers_path
  end

  def waiting_customer_params
    params.require(:waiting_customer).permit(:email, :table_number, :waiting_customer_id)
  end

  def destroy
    @waiting_customer = WaitingCustomer.find(waiting_customer_params[:waiting_customer_id])
    @waiting_customer.destroy!
    redirect_to waiting_customers_path
  end

end
