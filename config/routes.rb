Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'api/v1/auth', skip: [:omniauth_callbacks]
    
  namespace :api do
    resources :products, only: [:index]
  end

end
