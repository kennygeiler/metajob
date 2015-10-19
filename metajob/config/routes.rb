Rails.application.routes.draw do
  resources :applications
  resources :jobs

  resources :companies, only: [:index, :show]
  devise_for :users, controllers: {registrations: "users/registrations"}
  devise_for :companies, controllers: {registrations: "companies/registrations"}
  root 'jobs#index'

end
