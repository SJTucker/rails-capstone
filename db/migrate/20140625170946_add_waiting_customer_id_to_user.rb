class AddWaitingCustomerIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :waiting_customer_id, :integer
  end
end
