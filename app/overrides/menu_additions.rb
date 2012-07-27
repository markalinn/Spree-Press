Deface::Override.new(:virtual_path => "spree/layouts/admin", 
                     :name => "press_items_tab", 
                     :insert_bottom => "[data-hook='admin_tabs']", 
                     :partial => "spree/admin/shared/press_items_tab")

Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "press_items_menu", 
                     :insert_bottom => "#main-nav-bar[data-hook]", 
                     :partial => "spree/shared/press_items_menu")
