Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#root'

  namespace :api,  defaults: {format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:index, :show, :create]
    
    resources :cart_items, only: [:index, :show, :create, :update, :destroy]
    resources :reviews, only: [:index, :show, :create, :destroy]

    resources :products, only: [:index, :show, :create] do 
      get '/search' => 'products#search', :as => 'search_page'
    end

    # resources :users do 
    #   # resources :reviews, only: [:create, :destroy]
    # end
    
  end



end
