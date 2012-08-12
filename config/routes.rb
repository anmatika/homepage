Homepage::Application.routes.draw do
  resources :guestposts
  resources :'home'
  resources :links
  root :to => 'home#index'
end
