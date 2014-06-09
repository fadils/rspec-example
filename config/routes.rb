RspecExample::Application.routes.draw do
  resources :products, :except => [:edit, :update, :destroy]

  root :to => "products#index"
end
