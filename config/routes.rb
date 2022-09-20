Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :properties do
    resources :transactions, only: :create
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "components", to: "pages#components"
end
