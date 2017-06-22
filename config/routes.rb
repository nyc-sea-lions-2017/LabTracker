Rails.application.routes.draw do
  
  resources :proposals do
    resources :experiments
  end

  resources :proposals do
    resources :comments
  end

  get 'welcome/index'

  devise_for :users

  resources :users

  get "welcome/index"

  root "welcome#index"





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
