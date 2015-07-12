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

  get '/taquerias' => 'taquerias#index'
  get '/taquerias/new' => 'taquerias#new'
  post '/taquerias' => 'taquerias#create'
  get '/taquerias/:id' => 'taquerias#show', as: :taqueria
  get '/taquerias/:id/edit' => 'taquerias#edit'
  patch '/taquerias/:id' => 'taquerias#update'
  delete '/taquerias/:id' => 'taquerias#destroy'


end