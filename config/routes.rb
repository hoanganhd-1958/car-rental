Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cars#index"

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  get "/cars", to: "cars#index"

  resources :cars
end
