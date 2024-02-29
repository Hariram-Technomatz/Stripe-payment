Rails.application.routes.draw do
  resources :workshops, only: [:index, :show]
  get 'workshops/show'
  root 'home#index'
  resources :bookings, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
