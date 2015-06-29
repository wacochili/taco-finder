Rails.application.routes.draw do
  devise_for :users
  root to: "tacos#index"
  get "/"           => 'tacos#index'
  get "/tacos"      => 'tacos#index'
  get "/tacos/new"  => 'tacos#new'
  post "/tacos"     => 'tacos#create'
end