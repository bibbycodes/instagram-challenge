Rails.application.routes.draw do
  get 'posts/mew'
  get 'posts/index'
  get 'posts/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
