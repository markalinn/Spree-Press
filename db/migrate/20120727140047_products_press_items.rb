class ProductsPressItems < ActiveRecord::Migration
  def up
    create_table :press_items_products, :id => false do |t|
      t.references :press_item, :null => false
      t.references :product, :null => false
    end
    
    # Adding the index can massively speed up join tables. Don't use the
    # unique if you allow duplicates.
    add_index(:press_items_products, [:press_item_id, :product_id], :unique => true)
  end

  def down
    drop_table :press_items_products
  end
end
