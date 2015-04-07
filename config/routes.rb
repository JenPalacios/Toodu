Rails.application.routes.draw do
  match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]


  devise_for :users
  resources :users, only: [:show] do 
    resources :items
  end
  
root to: 'welcome#index'
end
