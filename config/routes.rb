Rails.application.routes.draw do
  # resources :playlists
  # resources :songs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post '/users/signup', to: 'users#create'
      post '/users/login', to: 'users#login'
      get '/users/spotify_access_token', to: 'users#spotify_access_token'
      get '/users/give_access_token', to: 'users#give_access_token'   
      resources :users, only: [:show, :update, :destroy] do
        resources :playlists, only: [:show, :index, :create, :update, :destroy] do 


          resources :songs, only: [:index, :create, :show, :destroy]

        end 
      end 
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
