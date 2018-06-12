Rails.application.routes.draw do

  # root 'spectacles#index' 
  
  get "/" => 'spectacles#index'

  get "/login" => "sessions#new"
  get "/sessions/create" => 'sessions#create'
  get "/logout" => "sessions#destroy"
  
  get "/spectacles" => "spectacles#index"
  get "/spectacles/new" => "spectacles#new"
  get "/spectacles/create" => "spectacles#create"
  get "/spectacles/:id/delete" => "spectacles#destroy"
  get "/spectacles/:id" => "spectacles#show"
  get "/spectacles/:id/edit" => "spectacles#edit"
  get "/spectacles/:id/update" => "spectacles#update"
  
  get "/users" => "users#index"
  get "/users/new" => "users#new"
  get "/users/create" => "users#create"
  get "/users/:id/delete" => "users#destroy"
  get "/users/:id" => "users#show"
  get "/users/:id/edit" => "users#edit"
  get "/users/:id/update" => "users#update"
  
  get "/designers" => "designers#index"
  get "/designers/new" => "designers#new"
  get "/designers/create" => "designers#create"
  get "/designers/:id/delete" => "designers#destroy"
  get "/designers/:id" => "designers#show"
  get "/designers/:id/edit" => "designers#edit"
  get "/designers/:id/update" => "designers#update"
  
  
end
