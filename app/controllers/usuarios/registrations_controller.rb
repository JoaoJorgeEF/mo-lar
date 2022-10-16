class Usuarios::RegistrationsController < Devise::RegistrationsController
    respond_to :json

    # def create
    #     build_resource(sign_up_params)
    
    #     resource.save
    #     yield resource if block_given?
    #     if resource.persisted?
    #       if resource.active_for_authentication?
    #         # set_flash_message! :notice, :signed_up
    #         sign_up(resource_name, resource)
    #         respond_with resource, location: after_sign_up_path_for(resource)
    #       else
    #         # set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
    #         expire_data_after_sign_in!
    #         respond_with resource, location: after_inactive_sign_up_path_for(resource)
    #       end
    #     else
    #       clean_up_passwords resource
    #       set_minimum_password_length
    #       respond_with resource
    #     end
    #   end



    # protected
    # def require_no_authentication
    #   assert_is_devise_resource!
    #   return unless is_navigational_format?
    #   no_input = devise_mapping.no_input_strategies
  
    #   authenticated = if no_input.present?
    #     args = no_input.dup.push scope: resource_name
    #     warden.authenticate?(*args)
    #   else
    #     warden.authenticated?(resource_name)
    #   end
  
    #   if authenticated && resource = warden.user(resource_name)
    #   #   set_flash_message(:alert, 'already_authenticated', scope: 'devise.failure')
    #     redirect_to after_sign_in_path_for(resource)
    #   end
    # end


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