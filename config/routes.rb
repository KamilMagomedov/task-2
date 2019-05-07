Rails.application.routes.draw do
  resources :customers
  resources :task_types
  resources :tasks
  devise_for :users

  get '/landing', to: 'application#landing'
  get '/admin', to: 'application#admin'

  root to: "application#landing"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
