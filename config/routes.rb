Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers
  resources :heros, only: [:index, :create, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
