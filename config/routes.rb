Rails.application.routes.draw do

  root 'application#hello', as: "hello"
  post '/login', to: 'sessions#create', as: "create_session"
  get 'secrets/new'
  get '/login', to: 'sessions#new', as: "new_session"
  post '/logout', to: 'sessions#destroy', as: "logout"
  get '/secret', to: 'secrets#show'

end
