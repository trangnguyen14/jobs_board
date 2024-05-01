Rails.application.routes.draw do
  devise_for :applicants
  resources :jobs
  #devise_for :users
  root 'jobs#index'
end
