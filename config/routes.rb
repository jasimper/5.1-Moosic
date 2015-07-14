Rails.application.routes.draw do
  root 'home#index'

  resources :albums
  resources :songs

end
