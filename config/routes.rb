Rails.application.routes.draw do

  # 授業登録周り
  get 'boards/index'=>'boards#index'
  get 'boards/register'=>'boards#register'

  resources :boards

  resources :boards do
    collection { post :import }
  end

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
