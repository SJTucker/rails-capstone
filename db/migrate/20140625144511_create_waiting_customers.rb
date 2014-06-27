class CreateWaitingCustomers < ActiveRecord::Migration
  def change
    create_table :waiting_customers do |t|

      t.timestamps
    end
  end
end
