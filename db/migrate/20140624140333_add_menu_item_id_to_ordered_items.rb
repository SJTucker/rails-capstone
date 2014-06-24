class AddMenuItemIdToOrderedItems < ActiveRecord::Migration
  def change
    add_column :ordered_items, :menu_item_id, :integer
  end
end
