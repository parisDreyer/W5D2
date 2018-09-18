Rails.application.routes.draw do
  resources :posts
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :subreddits , only: [:create, :new, :show, :index]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
