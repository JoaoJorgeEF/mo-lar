Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
  namespace :api do
    resources :usuarios, only: [:index, :delete, :create, :show]
  end
=======
  resources :usuarios
>>>>>>> 39a2d5da8744b6169f6774822e6c20497d818406
end
