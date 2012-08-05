Homepage::Application.routes.draw do
  resources :guestbooks

  resources :'home'
  root :to => 'home#index'
end
