Rails.application.routes.draw do
  devise_for :users
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts do
      collection do
        get :hot
      end
    end
  end
  root 'groups#index'
  namespace :account do
    resources :groups
    resources :posts
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
