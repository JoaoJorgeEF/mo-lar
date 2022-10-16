Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :usuarios, only: [:show, :update]
  namespace :api do
    namespace :v1 do
      resources :usuarios
      resources :posts
    end
  end

  devise_for :usuarios,
  controllers: {
      sessions: 'usuarios/sessions',
      registrations: 'usuarios/registrations'
  }
  

end
