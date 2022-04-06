Rails.application.routes.draw do
  resources :projects
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
    end
  end
end

