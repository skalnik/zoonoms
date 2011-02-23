Zoonoms::Application.routes.draw do
  devise_for :users do
    resources :noms
  end

  resources :animals

  root :to => "animals#index"
end
