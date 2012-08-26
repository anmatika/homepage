Homepage::Application.routes.draw do
  resources :guestposts
  resources :'home'
  resources :links
  resources :photos
  resources :test_bed
  root :to => 'home#index'
end
