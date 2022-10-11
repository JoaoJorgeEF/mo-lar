class Api::UsuariosController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    usuarios = Usuario.all
    render json: usuarios, status: 200
  end

  def create
    usuario = Usuario.new(
      nome: usuario_params[:nome],
      email: usuario_params[:email],
      senha: usuario_params[:senha],
      telefone: usuario_params[:telefone],
      cpf: usuario_params[:cpf]
    )

    if usuario.save
      render json: usuario, status: 200
    else
      render json: {error: "Erro criando usuario."}
    end
  end

  def show
    usuario = Usuario.find_by(id: params[:id])
    if usuario
      render json: usuario, status: 200
    else
      render json: {error: "Usuario não encontrado."}
    end
  end

  def delete
  end

  private
    def usuario_params
      params.require(:usuario).permit([
        :nome,
        :email,
        :senha,
        :telefone,
        :cpf
      ])
    end
end
