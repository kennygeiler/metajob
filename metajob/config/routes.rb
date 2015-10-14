Rails.application.routes.draw do
  resources :applications
  resources :jobs
  devise_for :users, controllers: {registrations: "users/registrations"}
  devise_for :companies, controllers: {registrations: "companies/registrations"}

end
