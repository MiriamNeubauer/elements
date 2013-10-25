Elements::Application.routes.draw do

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  post "/site/search", to: "sessions#search"

  root to: "site#index"

end
