Rails.application.routes.draw do
  get 'spot_images/new'

  get 'spot_images/create'

  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new" #, as: "new_user_registration" # custom path to sign_up/registration
  end
  devise_for :users
  get 'pages/index'

  resources :spots do
    resources :media, only: [:new, :create]
  end

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
