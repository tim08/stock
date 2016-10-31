require 'sidekiq/web'
Rails.application.routes.draw do
  get 'game_in_towns/index'

  root to: 'main#index'

  resources :history_transfer_of_products
  resources :products
  resources :stores
  resources :kind_of_packings

  mount ActionCable.server => '/cable'
  mount Sidekiq::Web => '/sidekiq'
end
