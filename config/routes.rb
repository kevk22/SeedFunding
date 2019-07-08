Rails.application.routes.draw do
   namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create]
    resources :projects, only: [:index, :show, :create, :update, :destroy]
    resources :categories, only: [:index, :show]
  end

  root "static_pages#root"
end
