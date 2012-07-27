Spree::Core::Engine.routes.draw do
  get '/press', :to => 'press_items#index', :as => :press
  
  namespace :admin do
    resources :press_items do
      collection do
        post :update_positions
      end
    end
  end
end
