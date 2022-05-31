Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :carehomes do
    resources :reviews, only: [:create]
    resources :favorites, only: [:create]
    resources :chatrooms, only: [:create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
