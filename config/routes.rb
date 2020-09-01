Rails.application.routes.draw do
  resources :workouts
  # , only: [:index, :show, :create, :update]
  resources :coaches
  resources :services
  resources :events
  resources :users, only: [:index, :show, :create]
  resources :admins, only: [:index, :show]
end
