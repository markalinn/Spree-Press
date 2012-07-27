class CreatePressItems < ActiveRecord::Migration
  def change
    create_table :spree_press_items do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
