Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', sessions: 'users/sessions' }
  root 'pages#index'
  get 'pages/about'
  get 'pages/contact'

  devise_scope :user do
    get 'sign_out' => 'devise/sessions#destroy'
  end

  get 'omniauth_test', to: 'home#display_omniauth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
