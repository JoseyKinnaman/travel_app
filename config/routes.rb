Rails.application.routes.draw do
  root to: 'travels#home'
  devise_for :users
  resources :travels do
    resources :comments
  end
end
