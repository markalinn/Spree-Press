module Spree
  class PressItemsController < Spree::BaseController
    def index
      @press_items = PressItem.page(params[:page]).per(15)
    end
    
    def show
      @press_item = PressItem.find(params[:id])
      @press_products = @press_item.products.all
    end
  end
end
