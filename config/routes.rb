Rails.application.routes.draw do

  devise_for :customers
  root to: 'homes#top'
  resources :movies do 
   resource :bookmarks, only: [:create, :destroy]
  end
  resources :customers
  #resource :bookmarks, only: [:create, :destroy]
end
