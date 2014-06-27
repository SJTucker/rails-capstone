class AddStripeCardTokenToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :stripe_card_token, :string
  end
end
