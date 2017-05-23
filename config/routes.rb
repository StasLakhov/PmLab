Rails.application.routes.draw do

  get 'homepages/index'

  resources :homepages

  root 'homepages#index'

  resources :projects
  resources :customers

end
