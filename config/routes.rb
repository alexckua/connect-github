Rails.application.routes.draw do
  root 'dashboard#index'
  resources :sessions, only: %i[create destroy]
  delete 'logout', to: 'sessions#destroy', as: 'logout'
end
