Rails.application.routes.draw do
  
  
  resources :console_types
  resources :listings   
  resources :games
  resources :users
 

  
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#process_login'
  get 'welcome', to: 'sessions#welcome'
  
  post "/login", to: "users#process_login"
  
  post "/listings/:id", to: "listings#buy", as: "buy"
  post "/listings/:id", to: "listings#sell", as: "sell"
  
  
 
 #PATCH "/listings/:id", to: "listing#buying_new_listing_button"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end