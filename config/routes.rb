Rails.application.routes.draw do
  root to: 'home#index'

  resources :announcements, only: :create
end
