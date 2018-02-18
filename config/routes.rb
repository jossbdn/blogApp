Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  scope '(:locale)', locale: /fr|en/ do
    root to: 'posts#index'

    resources :posts do
      resources :comments
    end

    get '/user/:id', to: 'user#show', as: :user
    get '/auth/:provider/callback', to: 'sessions#create'
    devise_for :users, skip: :omniauth_callbacks
  end

  devise_for :users, only: :omniauth_callbacks, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end