Homepage::Application.routes.draw do
  resources :guestposts
  resources :'home'
  root :to => 'home#index'
end
