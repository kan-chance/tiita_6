Rails.application.routes.draw do
  get 'comments/create'
  get 'boards/index'
  get 'boards/show/:id' => 'boards#show'
  post 'boards/create' => 'boards#create'

  post 'comments/create' => 'comments#create'

  root 'rooms#index'
  resources :rooms, only: %i[show]
  
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
