Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#root'

  namespace :api,  defaults: {format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:index, :show, :create]
    
    resources :cart_items, only: [:index, :show, :create, :update, :destroy]
    # resources :reviews, only: [:index, :show, :create, :edit, :destroy]
    resources :reviews

    resources :products, only: [:index, :show, :create]
    resources :categories, only: [:create]
    resources :tags, only: [:create]
    
    get '/search' => 'products#index', :as => 'search_page'
    
    # resources :users do 
    #   # resources :reviews, only: [:create, :destroy]
    # end
    
  end



end
