Rails.application.routes.draw do

  # devise_for :users
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  get '/'=>'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# ユーザーペーzー
  get 'users/show'
  resources :users, :only => [:show]
end
