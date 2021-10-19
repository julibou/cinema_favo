Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  get 'movies/new'
  get 'movies/edit'
  devise_for :customers
  root to: 'homes#top'
  resource :movies
end
