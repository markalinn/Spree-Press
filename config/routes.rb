Spree::Core::Engine.routes.draw do
  resources :press_items
  
  namespace :admin do
    resources :press_items do
      collection do
        post :update_positions
      end
    end
  end
end
