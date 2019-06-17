Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'trades/index'
  get 'trades/show'
  get 'trades/new'
  get 'trades/create'
  get 'wallets/index'
  get 'wallets/show'
  get 'banks/index'
resources :users, only: [:index, :create]
  get '/profile', to:"users#show", as: "profile"
  get '/signup', to: "users#new", as: "signup"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  resources :cryptos, only: [:index, :show]
  get 'add_funds', to: "users#add_funds_form"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
