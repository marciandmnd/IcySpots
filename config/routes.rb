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
  resources :spots do
    resources :media, only: [:new, :create]
  end

  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
