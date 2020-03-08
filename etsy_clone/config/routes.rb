Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#root'

  namespace :api,  defaults: {format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:index, :show, :create]
    resources :products, only: [:index, :show, :create]
      # resources :reviews, only: [:index, :show]
  

    resources :users do 
      # resources :reviews, only: [:create, :destroy]
    end

  end


end
