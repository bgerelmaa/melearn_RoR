Rails.application.routes.draw do
  resources :post
  root 'post#index'

  post 'post/new', to: 'post#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
