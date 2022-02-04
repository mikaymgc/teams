Rails.application.routes.draw do
  devise_for :users
  root to: 'teams#index'
  resources :teams do
    resources :members #ネスト
  end
end
