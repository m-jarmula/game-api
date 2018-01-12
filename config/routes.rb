Rails.application.routes.draw do
  resources :states, param: :name, only: %w(show)
  resources :maps, param: :name, only: %w(show)

  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'overrides/registrations'
  }

  mount ActionCable.server => '/cable'
end
