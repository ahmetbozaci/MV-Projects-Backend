Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/signup', to: 'users#create'
      resources :users, only: [:create, :index] do
        resources :projects, only: [:create, :index, :show]
      end
    end
  end
end

