Rails.application.routes.draw do
  
  # devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts 
  # do
  #   # resources :comments
  #   # resources :likes
  # end

  root 'posts#index'

end
