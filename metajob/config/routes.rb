Rails.application.routes.draw do
  resources :applications, only: [:new, :create]
  resources :jobs
  devise_for :users, controllers: {registrations: "users/registrations"}
  devise_for :companies, controllers: {registrations: "companies/registrations"}
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "home"
  get "/404", :to => "errors#not_found"
  get "/422", :to => "errors#unacceptable"
  get "/500", :to => "errors#internal_error"


end
