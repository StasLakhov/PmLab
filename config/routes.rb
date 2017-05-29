Rails.application.routes.draw do

  root 'homepages#index'
  get 'homepages/index'

  resources :homepages
  resources :projects
  resources :customers
  resources :mytasks

  get 'customers/:id/projects', to: 'customers#projects#show', :as => :customer_projects


end
