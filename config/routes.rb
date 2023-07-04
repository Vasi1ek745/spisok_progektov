Rails.application.routes.draw do
  root 'mainpage#index'   

  get "/mainpage/index", to: 'mainpage#index'  
  get "/mainpage/bio", to: 'mainpage#bio'


  resources :tasks do
    resources :points
  end
  
end
