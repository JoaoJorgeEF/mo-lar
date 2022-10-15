Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :usuarios 
  scope :api, defaults: { format: :json } do
    devise_for :usuarios, controllers: { sessions: :sessions },
                          path_names: { sign_in: :login }

    resource :usuario, only: [:index, :show, :update]
  end
end
