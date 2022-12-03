Rails.application.routes.draw do
  root to: "homes#top"
  get "homes/about" => "homes#about", as: 'about'
  resources :books, only: [:index, :show, :edit, :create, :destroy, :update]
  devise_for :users
  resources :users, only: [:show, :edit, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end