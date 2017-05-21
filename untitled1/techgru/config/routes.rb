Rails.application.routes.draw do

  devise_for :users
  resources :googglers
  root 'googglers#index'

end
