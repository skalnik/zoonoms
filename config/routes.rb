Zoonoms::Application.routes.draw do
  devise_for :users, :path => 'accounts'

  resources :users do
    resources :noms
  end

  resources :animals

  root :to => "home#index"
end
