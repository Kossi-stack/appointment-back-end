Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }, 
  path: 'users',
  path_names: 
  { sign_in: 'signin',
    sign_out: 'signout', 
    registration: 'signup' }

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :cars, only: [:index, :create, :destroy]
      resources :appointments, only: [:index, :create, :destroy]
    end
  end
end
