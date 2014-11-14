Rails.application.routes.draw do
  resources :posts, only: [:index, :create]

  resources :tags, only: [:show]
end
