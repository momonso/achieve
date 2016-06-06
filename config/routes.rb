Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  devise_for :users
  resources :blogs
  resources :users, only: [:index, :show]

  root to:'top#index'
  get 'form' => 'form#index'
  post 'form/confirm' => 'form#confirm'
  post 'form/thanks' => 'form#thanks'

end

