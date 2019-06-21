Rails.application.routes.draw do
  get '/', to: "users#landing" , as: "landing"
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'wallets/index'
  get 'wallets/show'
  get 'banks/index'
  resources :users, only: [:index, :create]
  get '/profile/:id/edit', to: "users#edit"
  patch '/profile', to:"users#update", as: "update"
  get '/signup', to: "users#new", as: "signup"
  get '/login', to: "sessions#new", as: "login"
  get '/profile', to:"users#show", as: "user"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  resources :cryptos, only: [:index, :show]
  get '/add_funds', to: "users#add_funds_form"
  patch '/add_funds', to: "users#add_funds"
  get '/buy', to: "trades#buy_form", as: "buy"
  get '/sell', to: "trades#sell_form", as: "sell"
  resources :trades, only: [:index]
  post '/trades', to: "trades#bought"
  post '/trades', to: "trades#sale"
  delete '/profile', to: "users#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
