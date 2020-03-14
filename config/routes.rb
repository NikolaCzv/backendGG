Rails.application.routes.draw do
  resources :follows
  resources :reviews
  resources :games
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :follows, only: [:create, :index, :show, :update]
      resources :users, only: [:create, :index, :show, :edit, :update, :destroy]
      resources :reviews
      resources :games
      post '/login', to: 'users#login'
      get '/current_user', to: 'users#show'
      post '/signup', to: 'users#create'
      get '/show_user/:id', to: 'users#show_user'
      delete '/follows/:followee_id/:follower_id', to: 'follows#destroy_follow'
    end
  end
end
