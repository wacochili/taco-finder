Rails.application.routes.draw do
  devise_for :users
  root to: "tacos#index"
  get "/"           => 'tacos#index'
  get "/tacos"      => 'tacos#index'
  get "/tacos/new"  => 'tacos#new'
  get "tacos/:id"   => 'tacos#show', as: :taco
  post "/tacos"     => 'tacos#create'

  
  get "/tacos/:id/edit" => 'tacos#edit'
  delete "/tacos/:id" => 'tacos#destroy'
  patch "/tacos/:id" => 'tacos#update'
  get "/tacos/:id" => 'tacos#show'
  post "/search" => 'tacos#search'

  get '/restaurants' => 'restaurants#index'
  get '/restaurants/new' => 'restaurants#new'
  post '/restaurants' => 'restaurants#create'
  get '/restaurants/:id' => 'restaurants#show', as: :restaurant
  get '/restaurants/:id/edit' => 'restaurants#edit'
  patch '/restaurants/:id' => 'restaurants#update'
  delete '/restaurants/:id' => 'restaurants#destroy'


end