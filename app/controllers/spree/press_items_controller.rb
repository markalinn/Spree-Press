module Spree
  class PressItemsController < Spree::BaseController
    def index
      @press_items = PressItem.all
    end
    
    def show
      @press_item = PressItem.find(params[:id])
      @press_products = @press_item.products.all
    end
  end
end
