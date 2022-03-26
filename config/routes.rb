Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', sessions: 'users/sessions' }
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'privacy_policy', to: 'pages#privacy_policy'
  get 'terms', to: 'pages#terms'

  devise_scope :user do
    get 'sign_out' => 'devise/sessions#destroy'
  end

  get 'omniauth_test', to: 'home#display_omniauth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
