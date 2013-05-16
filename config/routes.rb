Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :videos

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :converts do
    post "html2markdown" ,:on => :collection
  end
end