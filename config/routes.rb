Rails.application.routes.draw do
  devise_for :climbers
  resources :climbs
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'sectors', to: 'pages#sectors'  

  get 'sign_up', to: 'registrations#new' 
  post 'sign_up', to: 'registrations#create' 
  get "up" => "rails/health#show", as: :rails_health_check
end
