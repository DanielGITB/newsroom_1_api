Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth', skip: [:omniauth_callbacks]
  namespace :api do 
    resources :articles, only: [:index, :show, :create]
    resources :subscriptions, only: [:create], constraints: { format: 'json'}
  end
end
