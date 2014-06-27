class RemoveStripeTokenFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :stripeToken, :string
  end
end
