Rails.application.routes.draw do
  
  root "movies#index"
  
  resources :movies do
    resources :reviews
  end
  
  resource :session, only: [:new, :create, :destroy]
  
  resources :users
  resources :favorites

  get "signup" => "users#new"
  get "signin" => "sessions#new"

end
