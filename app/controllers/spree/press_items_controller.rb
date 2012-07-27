module Spree
  class PressItemsController < Spree::BaseController
    def index
      @press_items = PressItem.all
    end
    
    def show
      @press_item = PressItem.find(params[:id])
    end
  end
end
