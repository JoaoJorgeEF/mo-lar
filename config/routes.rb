Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :usuarios,
  controllers: {
      sessions: 'usuarios/sessions',
      registrations: 'usuarios/registrations'
  }
  # resources :usuarios
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
end
