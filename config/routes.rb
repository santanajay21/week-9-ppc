Rails.application.routes.draw do
  root 'sessions#welcome'
  resources :users
  resources :parties, only: [:index,:show]
  get '/auth/:provider/callback' => 'sessions#omniauth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
