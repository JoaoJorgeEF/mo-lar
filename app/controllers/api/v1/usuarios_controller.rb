class Api::V1::UsuariosController < ApplicationController
    # before_action :authenticate_usuario!
    before_action :set_usuario, only: %i[ show update destroy ]
  
    # GET /usuarios
    def index
      @usuarios = Usuario.all
  
      render json: @usuarios, include: [:endereco]
    end
  
    # GET /usuarios/1
    def show
      render json: @usuario, include: [:endereco]
    end
  
    # PATCH/PUT /usuarios/1
    def update
      if @usuario.update(usuario_params)
        render json: @usuario, include: [:endereco]
      else
        render json: @usuario.errors, status: :unprocessable_entity
      end
    end

        # DELETE /usuarios/1
    def destroy
      @usuario.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_usuario
        @usuario = Usuario.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def usuario_params
        params.require(:usuario).permit(:nome, :telefone, :cpf, endereco_attributes: [:id, :usuario_id, :logradouro, :bairro, :numero_residencia, :cep])
      end
  
      def endereco_params
        params.require(:usuario).permit(:logradouro, :bairro, :numero_residencia, :cep)
      end
  end