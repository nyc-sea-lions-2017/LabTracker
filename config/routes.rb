Rails.application.routes.draw do

  get 'welcome/index'

  devise_for :users

  get "welcome/index"

  root "welcome#index"


  resources :experiments
  resources :proposals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
