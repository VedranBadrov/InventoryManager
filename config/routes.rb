Rails.application.routes.draw do
  devise_for :users
  root "managers#index"

  resources :managers
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
