Rails.application.routes.draw do

  devise_for :users
  get 'new_user_registration' => 'devise/registrations#new_user_registration'

  resources :categories
  get 'categories/index'
  get 'categories/show'
  get 'categories/update'
  get 'categories/create'
  get 'categories/new'
  get 'categories/edit'
  get 'categories/destroy'
  
  get 'welcome/index', as: 'welcome_index'
  # resources :articles 



  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
