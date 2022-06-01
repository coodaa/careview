Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
# the routes need to be changend
  resources :carehomes do
    resources :reviews
    resources :favorites
    resources :chatrooms
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
