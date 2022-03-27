Rails.application.routes.draw do


  root to: "homes#top"
  get "home/about" => "homes#about", as:"about"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
  resources :users, only: [:show, :edit, :index, :update]
end