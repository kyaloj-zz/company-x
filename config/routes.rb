Rails.application.routes.draw do
  root to: 'registrations#new'
  resources :users, only: %i[show]
  resources :registrations, only: %i[new create]
  get 'session/logout', as: 'logout'
end
