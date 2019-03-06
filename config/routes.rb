Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plants do
    resources :transactions, only: [ :new, :create ]
  end
  get 'profile', to: 'users#profile', as: :profile
  resources :transactions, only: :index
end
