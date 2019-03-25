Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users do
        resources :trips, shallow: true
      end
      resources :trips do
        resources :translations, shallow: true
      end
      # get "/users", to: "user#index"
      # get "/users/:id", to: "user#show"
      # post "/users", to: "user#create"
      # patch "/users/:id", to: "user#update"
      # delete "/users/:id", to "user#delete"
      # get "/trips", to: "trip#index"
      # get "/trips/:id", to: "trip#show"
      # post "/trips", to: "trip#create"
      # patch "/trips/:id", to: "trip#update"
      # delete "/trips/:id", to "trip#delete"
      # get "/translations", to: "translation#index"
      # get "/translations/:id", to: "translation#show"
      # post "/translations", to: "translation#create"
      # patch "/translations/:id", to: "translation#update"
      # delete "/translations/:id", to "translation#delete"
    end
  end

end
