Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users

  resources :locales, :plans
  resources :users, only: [:create, :show]

  root to: "home#index"

end
