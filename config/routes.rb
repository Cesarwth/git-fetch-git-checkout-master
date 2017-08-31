Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
  post 'send_mail', to: 'dashboard#send_mail'


  namespace :manager do
    root 'dashboard#index'
    resources :categories, :users, :contacts, :rotating_images
  end

  get 'download_document', to: 'manager/categories#download_document', as: 'download_document'
end
