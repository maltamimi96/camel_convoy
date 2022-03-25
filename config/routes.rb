Rails.application.routes.draw do
  get 'listings/show'
  get 'listings/update'
  get 'listings/create'
  get 'listings/destroy'
  resources :active_orders
  resources :drivers
  resources :deliveries
  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "main#index"

get "delivery/view_deliveries", to: 'deliveries#view_all'

get "/listings", to: 'listings#index',as: "listings"



end
