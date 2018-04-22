Rails.application.routes.draw do
  
  resources :meetings
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :patients
  resources :users
  root 'patients#index'
  post '/validate', :controller=>'patients', :action=>'indicate'
  
end
