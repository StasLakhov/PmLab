Rails.application.routes.draw do

  root 'homepages#index'
  get 'homepages/index'

  resources :homepages
  resources :projects
  resources :customers do
    resources :coworkers
  end
  resources :mytasks
  resources :qas
  resources :teams
  resources :gdrives

  get 'customers/:id/projects', to: 'customers#projects#show', :as => :customer_projects
  get 'projects/:id/qas', to: 'projects#qas#show', :as => :project_qas


end
