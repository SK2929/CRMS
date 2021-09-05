Rails.application.routes.draw do
  config = Rails.application.config.crms
  #namespace :staff do #パス指定前
  # namespace :staff, path: "" do #パス指定後
  #   root "top#index"
  #   get "login" => "sessions#new", as: :login
  #   resource :session, only: [ :create, :destroy]
  #   resource :account, except: [ :new, :crreate, :destroy]
  # end
  # 制約指定
  constraints host: config[:staff][:host] do
    namespace :staff, path: config[:staff][:path] do
      root "top#index"
      get "login" => "sessions#new", as: :login
      resource :session, only: [ :create, :destroy]
      resource :account, except: [ :new, :crreate, :destroy]
    end
  end

  constraints host: config[:admin][:host] do
    namespace :admin, path: config[:admin][:path] do
      root "top#index"
      get "login" => "sessions#new", as: :login
      resource :session, only: [ :create, :destroy]
      resources :staff_members
    end
  end

  constraints host: config[:customer][:host] do
    namespace :customer, path: config[:customer][:path] do
      root "top#index"
    end
  end
end
