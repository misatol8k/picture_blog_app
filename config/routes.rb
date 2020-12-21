Rails.application.routes.draw do
  get 'sessions/new'
  get '/pictures', to: 'pictures#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :pictures do
    collection do
      post :confirm
    end
  end
end
