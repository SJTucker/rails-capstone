class AddUseriIdToOrderedItems < ActiveRecord::Migration
  def change
    add_column :ordered_items, :user_id, :integer
  end
end
