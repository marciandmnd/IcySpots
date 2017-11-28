Rails.application.routes.draw do

  devise_for :users, skip: [:sessions], controllers: {sessions: "sessions", passwords: "passwords"}

  as :user do
    get "signin", to: "devise/sessions#new", as: :new_user_session
    post "signin", to: "devise/sessions#create", as: :user_session
    delete "signout", to: "devise/sessions#destroy", as: :destroy_user_session
  end

  get "pages/index"

  get "/profile" => "pages#profile"
  get "/profile/:id" => "pages#profile_show"

  get "/about" => "pages#about"
  get "/terms-of-service" => "pages#tos", as: :tos
  get "/privacy-policy" => "pages#privacy", as: :privacy

  resources :spots do
    resources :media, only: [:new, :create]
  end

  resources :media, only: [:destroy]

  root "pages#index"
end
