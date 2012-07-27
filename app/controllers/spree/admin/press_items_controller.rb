module Spree
  module Admin
    class PressItemsController < ResourceController
      def update_positions
        params[:positions].each do |id, index|
          PressItem.update_all(['position=?', index], ['id=?', id])
        end
    
        respond_to do |format|
          format.js  { render :text => 'Ok' }
        end
      end
    end
  end
end
