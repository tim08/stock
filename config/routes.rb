Rails.application.routes.draw do
  root to: 'main#index'

  resources :history_transfer_of_products
  resources :products
  resources :stores
  resources :kind_of_packings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
