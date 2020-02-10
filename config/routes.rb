Rails.application.routes.draw do
  # resources :playlists
  # resources :songs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post '/users/signup', to: 'users#create'  
      resources :users, only: [:show, :update, :destroy] do
        resources :playlists, only: [:show, :index, :create, :update, :destroy] do 


          resources :songs, only: [:index, :show, :destroy]

        end 
      end 
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
