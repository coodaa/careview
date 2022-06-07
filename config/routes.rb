Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # the routes need to be changend
  resources :carehomes do
    member do
      post 'toggle_favorite', to: "carehomes#toggle_favorite"
    end
    resources :reviews
    resources :favorites
    resources :chatrooms
    get '/page/:page', action: :index, on: :collection
  end

  resources :dashboards, only: %i[index]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
