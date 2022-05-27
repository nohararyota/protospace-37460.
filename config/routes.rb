Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update,:destroy]do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :comments, only: :create
  end
  resources :users, only: :show
end