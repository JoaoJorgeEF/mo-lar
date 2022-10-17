class Usuarios::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?  
  respond_to :json

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:id, :nome, :telefone, :cpf, endereco_attributes: [:logradouro, :bairro, :numero_residencia, :cep]])
  end

  private
  def respond_with(resource, _opts = {})
    resource.persisted? ? register_success : register_failed
  end
  def register_success
    render json: { message: 'Signed up.' }
  end
  def register_failed
    render json: { message: "Signed up failure." }
  end
end