Deface::Override.new(:virtual_path => "spree/layouts/admin", 
                     :name => "press_items_tab", 
                     :insert_bottom => "[data-hook='admin_tabs']", 
                     :partial => "spree/admin/shared/press_items_tab")

