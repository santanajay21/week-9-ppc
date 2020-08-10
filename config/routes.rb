Rails.application.routes.draw do
  root 'sessions#welcome'
  delete '/logout', to: 'sessions#destroy'
  resources :supplies
  resources :categories
  resources :users, only: [:show]
  resources :parties, only: [:index,:show, :new, :create]


  get '/auth/:provider/callback' => 'sessions#omniauth'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
