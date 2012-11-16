TodoApp::Application.routes.draw do
  root :to => "home#index"
  
  get :signin, to: 'sessions#new'
  get :signout, to: 'sessions#destroy'
  
  get '/auth/facebook/callback', to: 'sessions#create'
  
  resources :users
end
