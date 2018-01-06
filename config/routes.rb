Rails.application.routes.draw do
  get 'check/index'
  get 'check/create'
 # get '/search' => 'check/search'

  match "/search" => "check#search", via: :get

  resources :banneds
  resources :check
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root to: 'banneds#index'

end
