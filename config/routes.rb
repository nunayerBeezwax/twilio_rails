TwilioApp::Application.routes.draw do
  devise_for :users
  resources :users, :only => :show
   root to: 'messages#index'
  resources :messages
  resources :contacts
end
