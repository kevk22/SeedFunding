Rails.application.routes.draw do
   namespace :api, defaults: {format: :json} do
    resource :user, only: [:new, :create]
    resource :session, only: [:new, :create, :destroy]
  end

  root "static_pages#root"
end
