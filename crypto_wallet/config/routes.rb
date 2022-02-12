Rails.application.routes.draw do
  get 'welcome/index'

  # resources create routes automatically to CRUD
  resources :coins 
  # manual routes
  # get '/coins', to: 'coins#index' ... other routes

  root to: 'welcome#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
