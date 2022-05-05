Rails.application.routes.draw do
  # root "users#index"
  root "products#index"
  resources :users do
    member do
      get :activate
    end

  end
  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :products do
    collection do
      get :own
    end
  end
end
