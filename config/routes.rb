Rails.application.routes.draw do
  resources :console_types
  resources :listings   
  resources :games
  resources :users
  post "/listings/:id", to: "listings#buy", as: "buy"
  
 
 #PATCH "/listings/:id", to: "listing#buying_new_listing_button"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end