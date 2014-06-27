class RemoveStripeCardTokenFromCustomer < ActiveRecord::Migration
  def change
    remove_column :customers, :stripe_card_token, :string
  end
end
