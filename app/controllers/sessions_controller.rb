class SessionsController < Devise::SessionsController
    def create
      usuario = Usuario.find_by_email(sign_in_params[:email])
  
      if usuario && usuario.valid_password?(sign_in_params[:password])
        @current_user = usuario
      else
        render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
      end
    end
  end