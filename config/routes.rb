Rails.application.routes.draw do

  devise_for :customers
  root to: 'homes#top'
  resources :movies
  resources :customers
end
