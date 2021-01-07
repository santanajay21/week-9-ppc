Rails.application.routes.draw do

  resources :parties, only: [:index,:show,:new,:create]
  resources :categories, only: [:index,:show,:new,:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
