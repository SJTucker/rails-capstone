class RemoveEmailFromWaitingCustomers < ActiveRecord::Migration
  def change
    remove_column :waiting_customers, :email, :string
  end
end
