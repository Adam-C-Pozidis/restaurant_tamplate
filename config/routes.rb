Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # restaurant :index
  root to: "restaurants#index"
  resources :restaurants, only: :show
end
