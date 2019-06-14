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
  get 'users/index'
  get '/signup', to: "users#new", as: "signup"
  get 'cryptos/index'
  get 'cryptos/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
