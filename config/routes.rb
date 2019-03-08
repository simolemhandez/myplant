Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plants do
    resources :transactions, only: [ :new, :create ]
    resources :messages, only: [ :new, :create ]
  end
  get 'profile', to: 'users#profile', as: :profile
  get 'utilisateur/:id', to: 'users#go_to_profile', as: :go_to_profile
  get 'mytransactions', to: 'transactions#mytransactions', as: :mytransactions
  resources :transactions, only: :index do
    member do
      get 'accept', to: 'transactions#accept'
    end
  end
  resources :messages, only: :index
end


