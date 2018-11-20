Rails.application.routes.draw do

  root :to => "front#index"
  get 'dashboard' => 'dashboard#index'

  get     "login"    => "session#new"
  post    "login"    => "session#create"
  delete  "logout"   => "session#destroy"
  get  "" => "session#new"
  resources:users
  resources:roles
  resources:fronts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
