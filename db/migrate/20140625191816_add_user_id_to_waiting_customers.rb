class AddUserIdToWaitingCustomers < ActiveRecord::Migration
  def change
    add_column :waiting_customers, :user_id, :integer
  end
end
