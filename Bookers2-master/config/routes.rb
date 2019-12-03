Rails.application.routes.draw do
  get 'home/about'
  devise_for :users
  root 'home#index'
  resources :home , only: [:index]
  resources :users , only: [:index, :show, :edit, :create, :update]
  resources :books , only: [:index, :show, :edit, :create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
