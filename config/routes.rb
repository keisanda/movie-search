Rails.application.routes.draw do
  resources :random_movies
  resources :search_movies
  resources :movie_randoms
  resources :movie_searches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
