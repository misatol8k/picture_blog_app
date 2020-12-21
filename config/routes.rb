Rails.application.routes.draw do
  get 'sessions/new'
  get '/pictures', to: 'pictures#index'
  # resources :users
  resources :pictures
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  # resources :pictures do
  #   collection do
  #     post :confirm
  #   end
  # end
end
