Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"

  resources :lists, only: [:show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
