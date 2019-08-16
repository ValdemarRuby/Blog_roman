Rails.application.routes.draw do
  get '/' => 'home#index'

  get 'contacts' => 'contacts#new'
  resource :contacts, only: [:create]
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home/contacts' => 'home#contacts'
end
