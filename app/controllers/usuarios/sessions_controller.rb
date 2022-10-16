class Usuarios::SessionsController < Devise::SessionsController
  respond_to :json

#   def create
#     self.resource = warden.authenticate!(auth_options)
#     # set_flash_message!(:notice, :signed_in)
#     sign_in(resource_name, resource)
#     yield resource if block_given?
#     respond_with resource, location: after_sign_in_path_for(resource)
#   end

#   # DELETE /resource/sign_out
#   def destroy
#     signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
#     # set_flash_message! :notice, :signed_out if signed_out
#     yield if block_given?

#     respond_to_on_destroy
#   end

#   protected
#   def require_no_authentication
#     assert_is_devise_resource!
#     return unless is_navigational_format?
#     no_input = devise_mapping.no_input_strategies

#     authenticated = if no_input.present?
#       args = no_input.dup.push scope: resource_name
#       warden.authenticate?(*args)
#     else
#       warden.authenticated?(resource_name)
#     end

#     if authenticated && resource = warden.user(resource_name)
#     #   set_flash_message(:alert, 'already_authenticated', scope: 'devise.failure')
#       redirect_to after_sign_in_path_for(resource)
#     end
#   end


  private
  def respond_with(resource, _opts = {})
    render json: { message: 'Logged.' }, status: :ok
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