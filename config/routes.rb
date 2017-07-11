Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users

  resources :locales, :plans
  resources :users, only: [:create, :show]


  get '/users/find_by_firebase', to: 'users#find_by_firebase'

  root to: "home#index"

end
