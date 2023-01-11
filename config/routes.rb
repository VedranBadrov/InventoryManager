Rails.application.routes.draw do
  
  #get 'managers/index'
  #get 'managers/list'
  #get 'managers/add'
  #get 'managers/edit'
  #get 'managers/delete'
  devise_for :users
  resources :managers
  resources :items
  resources :mainsuppliers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "managers#index"
  get "/beers", to: "managers#beers"
  get "/fruits", to: "managers#fruits"
  get "/items", to: "managers#items"
  get "/mainsuppliers", to: "managers#mainsuppliers"


end
