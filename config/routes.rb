Hotline::Application.routes.draw do
  
  get "users/create"
  root "questions#index"

  resources :questions

  match "/auth/google_oauth2/callback" => "sessions#create", via: [:get, :post]
  match "/signout" => "sessions#destroy", :as => :signout, via: [:get, :post]

end
