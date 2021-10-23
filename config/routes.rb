Rails.application.routes.draw do

  post "api/v1/login", to: "session#create"

  resources :horror_movie_genres
  namespace :api do
    namespace :v1 do
      resources :genres
      resources :horror_movies
      resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
