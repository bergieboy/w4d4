Rails.application.routes.draw do

  resources :users, only: %i(new create show)
  resources :bands

  resource :session, only: %i(new create destroy)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
