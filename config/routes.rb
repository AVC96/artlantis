Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :arts

  # root for favourites?
  # devise for :user
  # root to: 'favourites#index'
  # resources :arts
end
