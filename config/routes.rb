Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "welcome#index"
 
  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new'
  post '/items', to: 'items#create'
  get 'items/:id/edit', to: 'items#edit', as: 'edit_item'
  #testing delete before dave's help
  # get 'items/:id/delete', to: 'items#confirm_destroy', as: 'confirm_destroy'
  get 'items/:id', to: 'items#destroy'
  
  #need help
  patch 'items/:id', to: 'items#update', as: 'update_item'

  #need help
  delete 'items/:id', to: 'items#destroy', as: 'destroy_item'
end
