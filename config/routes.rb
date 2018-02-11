Rails.application.routes.draw do
  resources :posts

  get '/', to: "posts#index"
  get '/auth/:provider/callback', to: 'sessions#create'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
