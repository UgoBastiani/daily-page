Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/questions", to: 'pages#questions'

  resources :suggestions, only: [:index, :show, :create]

  resource :profile, only: :show

  resources :books, only: [:show] do
    resources :favorites, only: [:create]
  end
  resources :favorites, only: [:destroy]
  resources :favorites, only: [:index] do
    member do
      patch :mark_as_read
      patch :mark_as_unread
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
