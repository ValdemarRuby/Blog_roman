Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  get '/' => 'home#index'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles do
    resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home/contacts' => 'home#contacts'
end
