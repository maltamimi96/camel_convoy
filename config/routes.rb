Rails.application.routes.draw do
  resources :drivers
  resources :deliveries
  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "main#index"

get "delivery/view_deliveries", to: 'deliveries#view_all'

get "orders",to: 'orders#add_order'

end
