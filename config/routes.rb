Rails.application.routes.draw do
  # get 'restaurants/index'
  # get 'restaurants/show'
  root to: 'restaurants#new'
  resources :restaurants do
    resources :menus
  end

  resources :menus do
    resources :items
    resources :orders
  end
  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
