class AddPositionToSpreePressItems < ActiveRecord::Migration
  def change
    add_column :spree_press_items, :position, :integer
  end
end
