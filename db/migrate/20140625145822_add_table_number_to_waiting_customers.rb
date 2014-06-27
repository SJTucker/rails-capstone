class AddTableNumberToWaitingCustomers < ActiveRecord::Migration
  def change
    add_column :waiting_customers, :table_number, :integer
  end
end
