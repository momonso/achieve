Rails.application.routes.draw do
  resources :blogs

  root to:'top#index'
  get 'form' => 'form#index'
  post 'form/confirm' => 'form#confirm'
  post 'form/thanks' => 'form#thanks'

end
