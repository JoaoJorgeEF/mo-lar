class Usuarios::SessionsController < Devise::SessionsController
  respond_to :json

  private
  def respond_with(resource, _opts = {})
    @endereco = Endereco.where(usuario_id: current_usuario.id)
    render json: {message: "Logged in.", "usuario": current_usuario, "endereco": @endereco}, status: :ok
  end
  def respond_to_on_destroy
    current_usuario ? log_out_failure : log_out_success
  end
  def log_out_success
    render json: { message: "Logged out." }, status: :ok
  end
  def log_out_failure
    render json: { message: "Logged out failure."}, status: :unauthorized
  end
end