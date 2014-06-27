class AddEmailToWaitingCustomers < ActiveRecord::Migration
  def change
    add_column :waiting_customers, :email, :string
  end
end
