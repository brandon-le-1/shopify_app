Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "items#index"
 
  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new'
  post '/items', to: 'items#create'
  get 'items/:id/edit', to: 'items#edit', as: 'edit_item'
  patch 'items/:id', to: 'items#update', as: 'update_item'
  get 'items/:id', to: 'items#show', as: 'show_item'
  delete 'items/:id', to: 'items#destroy', as: 'destroy_item'
  get '/generate_csv', to: 'items#generate_csv', defaults: {format: :csv}
end
