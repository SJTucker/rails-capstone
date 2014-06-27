class AddOrderedItemIdToMenuItem < ActiveRecord::Migration
  def change
    add_column :menu_items, :ordered_item_id, :integer
  end
end
