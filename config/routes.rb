Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  root 'posts#index'
end
