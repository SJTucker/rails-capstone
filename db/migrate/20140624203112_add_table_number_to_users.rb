class AddTableNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :table_number, :integer
  end
end
