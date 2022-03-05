Rails.application.routes.draw do
  # ROOT ('/') GOES TO PAGES CONTROLLER, HOME ACTION
  root to: 'pages#home'
  # ROUTES FOR DEVISE (LOGIN, LOGOUT, SIGN UP)
  devise_for :users
  # ROUTES FOR ARTWORKS
  resources :arts
  # routes for artists
  resources :artists
  # routes for bids
  resources :bids
  get "artist_search", to: "artists#search"
end
