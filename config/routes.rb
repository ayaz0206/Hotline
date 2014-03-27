Hotline::Application.routes.draw do
  
  
  root "questions#index"
  
  resources :questions
  resources :responses
  
  get "users/create"
  match "/auth/google_oauth2/callback" => "sessions#create", via: [:get, :post]
  match "/signout" => "sessions#destroy", :as => :signout, via: [:get, :post]

  get 'users/:id' => "users#show", as: "user"
  post 'questions/:id/edit' => "questions#update", as: "update_question"

  post "responses/mark_answer", as: "mark_answer"
  get 'tags/:tag', to: 'questions#index', as: :tag

  post "questions/search", as: "search"
  get "search/:search" => "questions#result", as: "result"

  get "users" => "users#all_users", as: "users"

end
