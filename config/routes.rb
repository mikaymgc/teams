Rails.application.routes.draw do
  root to: 'teams#index'
  resources :teams do
    resources :members #ネスト
  end
end
