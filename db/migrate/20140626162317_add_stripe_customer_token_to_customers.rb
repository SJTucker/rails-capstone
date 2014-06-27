class AddStripeCustomerTokenToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :stripe_customer_token, :string
  end
end
