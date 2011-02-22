Rails.application.routes.draw do
  resources :users do
    member do
      post :unlock
    end
    collection do
      get :current
    end
  end
end
