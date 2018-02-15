Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  get '/user/:id', to: 'user#show', as: :user
  get '/auth/:provider/callback', to: 'sessions#create'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
