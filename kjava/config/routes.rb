Rails.application.routes.draw do
  get 'todolists/index'
  root to: 'todolists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
