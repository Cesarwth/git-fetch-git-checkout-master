Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
  post 'send_mail', to: 'dashboard#send_mail'



  namespace :manager do
    root 'dashboard#index'
    resources :users, :contacts, :rotating_images
    resources :categories do
      get 'download_document'
    end
  end
end
