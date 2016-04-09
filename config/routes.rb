Rails.application.routes.draw do
  get 'static/sitemap'

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :admins
  devise_for :users
  get 'static/home'

  resources :services
  resources :products
  resources :users

  root 'static#home'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

end
