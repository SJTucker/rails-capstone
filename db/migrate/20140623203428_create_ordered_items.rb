class CreateOrderedItems < ActiveRecord::Migration
  def change
    create_table :ordered_items do |t|

      t.timestamps
    end
  end
end
