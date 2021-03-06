Rails.application.routes.draw do
  
  root "movies#index"
  
  resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end

  get "movies/filter/:filter" => "movies#index", as: :filtered_movies

  resources :genres
  
  resource :session, only: [:new, :create, :destroy]
  
  resources :users

  get "signup" => "users#new"
  get "signin" => "sessions#new"

end
