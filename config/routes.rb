Rails.application.routes.draw do
  resources :posts do
    member do
      post 'checker'
    end
  end

  get 'pages/index'

  get 'pages/checker'

  devise_for :users

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
