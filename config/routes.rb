Rails.application.routes.draw do
  resources :files, only: [:new, :create, :index]
  get "login", controller: :sessions, action: :new
  post "login", controller: :sessions, action: :create
  delete "logout", controller: :sessions, action: :destroy

  root "home#index"
end
