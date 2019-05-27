Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :update]
    resource :session, only: [:create, :destroy, :index]
    resources :projects, except: [:new, :edit] do
      get "search", on: :collection
    end
    resources :categories, only: [:index, :show]
    resources :pledges, only: [:create]
  end
end
