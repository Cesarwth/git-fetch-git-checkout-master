Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
  post 'send_mail', to: 'dashboard#send_mail'
  get 'householder', to: 'householder#index'


  namespace :manager do
    resources :categories, :householders, :contacts, :rotative_images
  end
end
