Zoonoms::Application.routes.draw do
  devise_for :users, :path => 'accounts'

  resources :users do
    resources :noms
  end

  namespace :admin do
    resources :animals
  end

  root :to => "home#index"
end
