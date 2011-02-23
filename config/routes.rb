Zoonoms::Application.routes.draw do
  devise_for :users

  resources :animals

  root :to => "animals#index"
end
