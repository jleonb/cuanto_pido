Rails.application.routes.draw do
  get 'static/sitemap'

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :admins
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  get 'static/home'

  resources :services
  resources :products
  resources :users

  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

  root 'static#home'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

end
