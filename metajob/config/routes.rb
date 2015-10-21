Rails.application.routes.draw do
  resources :applications, only: [:new, :create]
  resources :jobs
  devise_for :users, controllers: {registrations: "users/registrations"}
  devise_for :companies, controllers: {registrations: "companies/registrations"}
  get "/pages/:page" => "pages#show"
  root "pages#show"

end
