# encoding: utf-8

Rails.application.routes.draw do
  resources :users do
    member do
      post :lock, :unlock
    end
    collection do
      get :current
    end
  end
end
