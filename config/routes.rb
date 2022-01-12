Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "welcome#index"

  get "/items", to: "items#index"
  get "/items/new", to: "items#new"
  post "/items", to: "items#create"
end
