Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create, :delete]
  end
end


# lists                             GET  /lists(.:format)           lists#index
#                                   POST /lists(.:format)           lists#create
#                          new_list GET  /lists/new(.:format)       lists#new
#                              list GET  /lists/:id(.:format)       lists#show
