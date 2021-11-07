Rails.application.routes.draw do
  get 'rooms/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  delete '/signout', to: 'sessions#destroy'

  resources :rooms
  resources :users
  root 'rooms#index'
end
