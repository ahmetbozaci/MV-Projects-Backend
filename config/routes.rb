Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index] do
        resources :projects, only: [:create, :index, :show]
      end
    end
  end
end

