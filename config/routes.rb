Rails.application.routes.draw do
  root 'books#index'

  get '/signup'  => 'users#new'

  get 'logIn' => 'sessions#new'

  post '/logIn' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  resources :books
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
