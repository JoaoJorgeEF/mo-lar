require 'rails_helper'

RSpec.describe Usuario, type: :model do
  it "Usuario é cadastrado quando todos os campos são informados" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    expect(u).to be_valid
  end

  it "email é nulo" do
    u = Usuario.new(email: nil, nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    expect(u).not_to be_valid
  end

  it "email não é informado" do
    u = Usuario.new(nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    expect(u).not_to be_valid
  end

  it "nome é nulo" do
    u = Usuario.new(email: 'email@example.com', nome: nil, cpf: '123456789', telefone: '40028922', password:'123456')
    expect(u).not_to be_valid
  end

  it "nome não é informado" do
    u = Usuario.new(email: 'email@example.com', cpf: '123456789', telefone: '40028922', password:'123456')
    expect(u).not_to be_valid
  end

  it "cpf é nulo" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: nil, telefone: '40028922', password:'123456')
    expect(u).not_to be_valid
  end

  it "cpf não é informado" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', telefone: '40028922', password:'123456')
    expect(u).not_to be_valid
  end

  it "telefone é nulo" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: nil, password:'123456')
    expect(u).not_to be_valid
  end

  it "telefone não é informado" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', password:'123456')
    expect(u).not_to be_valid
  end

  it "senha nula" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:nil)
    expect(u).not_to be_valid
  end

  it "senha não foi informada" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922')
    expect(u).not_to be_valid
  end

  it "nome menor que 2 caracteres" do
    u = Usuario.new(email: 'email@example.com', nome: 's', cpf: '123456789', telefone: '40028922', password:nil)
    expect(u).not_to be_valid
  end

  it "nome maior que 40 caracteres" do
    u = Usuario.new(email: 'email@example.com', nome: 'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel', cpf: '123456789', telefone: '40028922', password:nil)
    expect(u).not_to be_valid
  end

  it "cpf contem caracteres" do
    u = Usuario.new(email: 'email@example.com', nome: 's', cpf: '123.456.789-11', telefone: '40028922', password:nil)
    expect(u).not_to be_valid
  end

  it "Usuário não é criado se telefone contem caracteres" do
    u = Usuario.new(email: 'email@example.com', nome: 's', cpf: '12345678911', telefone: '4002-8922', password:nil)
    expect(u).not_to be_valid
  end
end
