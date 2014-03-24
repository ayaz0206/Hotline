Hotline::Application.routes.draw do
  
  
  root "questions#index"
  
  resources :questions
  
  get "users/create"
  post "responses/create", as: "response"
  match "/auth/google_oauth2/callback" => "sessions#create", via: [:get, :post]
  match "/signout" => "sessions#destroy", :as => :signout, via: [:get, :post]

  get 'users/:id' => "users#show", as: "user"
  post 'questions/:id/edit' => "questions#update", as: "update_question"

end
