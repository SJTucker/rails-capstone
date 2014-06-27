class OrderedItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :menu_item
  has_many :menu_items
end
