Rails.application.routes.draw do
  # ROOT ('/') GOES TO PAGES CONTROLLER, HOME ACTION
  root to: 'pages#home'
  # ROUTES FOR DEVISE (LOGIN, LOGOUT, SIGN UP)
  devise_for :users
  # ROUTES FOR ARTWORKS
  resources :arts do
    resources :bids, only: :create
  end
  # routes for artists
  resources :artists
  # routes for bids

  # route for the contents page
   get "contents", to: "pages#contents"
end
