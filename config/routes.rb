Rails.application.routes.draw do
  resources :stock_controls
  resources :impressoras
  resources :vpns
  # Define a rota root para o index da home
  root 'home#index'

  # Configura as rotas do Devise para autenticação de usuários
  devise_for :users

  # Define todas as rotas RESTful para artigos (index, show, new, create, edit, update, destroy)
  resources :articles
  resources :stock_controls

  # Rota explícita para o index da home, com alias 'home_index'
  get 'home/index', as: 'home_index'

  # Outras rotas e configurações adicionais...
end
  # ... outras rotas e configurações adicionais ...
  # rails server -b 10.0.60.189
  #kill -9 3173
