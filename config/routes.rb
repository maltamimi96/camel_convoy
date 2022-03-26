Rails.application.routes.draw do
  resources :orders
  resources :orders
  get 'active_orders/create'
  resources :active_orders
  resources :drivers
  resources :deliveries
  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "main#index"

get "delivery/view_deliveries", to: 'deliveries#view_all'
get "listings", to: "listings#index", as: "listings"
post "listings", to: "listings#create"
get "listings/new", to: "listings#new", as: "new_listing"
get "listings/:id", to: "listings#show", as: "listing"
put "listings/:id", to: "listings#update"
patch "listings/:id", to: "listings#update"
delete "listings/:id", to: "listings#destroy", as: "delete_listing"
get "listings/:id/edit", to: "listings#edit", as: "edit_listing"



end
