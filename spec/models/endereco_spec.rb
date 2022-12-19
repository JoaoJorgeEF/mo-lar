require 'rails_helper'

RSpec.describe Endereco, type: :model do
  it "Endereco é criado com todos os dados informado" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', numero_residencia: '42', cep: '12345678', usuario: u)
    expect(e).to be_valid
  end

  it "logradouro nulo" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: nil, bairro: 'Jardim teste', numero_residencia: '42', cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "bairro nulo" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: nil, numero_residencia: '42', cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "numero_residencia nulo" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', numero_residencia: nil, cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "CEP nulo" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', numero_residencia: '42', cep: nil, usuario: u)
    expect(e).not_to be_valid
  end

  it "usuario nulo" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', numero_residencia: '42', cep: '12345678', usuario: nil)
    expect(e).not_to be_valid
  end

  it "logradouro não é informado" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(bairro: 'Jardim teste', numero_residencia: '42', cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "bairro não é informado" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', numero_residencia: '42', cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "numero_residencia não é informado" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "CEP não informado" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', numero_residencia: '42', usuario: u)
    expect(e).not_to be_valid
  end

  it "usuario não informado" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', numero_residencia: '42', cep: '12345678')
    expect(e).not_to be_valid
  end

  it "logradouro menor do que 2 caracteres" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'a', bairro: 'Jardim teste', numero_residencia: '42', cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "bairro menor do que 2 caracteres" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'a', numero_residencia: '42', cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "numero_residencia decimal" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', numero_residencia: 1.2 ,cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "numero_residencia tendo caracteres" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', numero_residencia: '12-A' ,cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "CEP decimal" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', numero_residencia: '42' ,cep: 1.2345678, usuario: u)
    expect(e).not_to be_valid
  end

  it "numero_residencia tendo caracteres" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'rua do teste', bairro: 'Jardim teste', numero_residencia: '12-A' ,cep: '12345-678', usuario: u)
    expect(e).not_to be_valid
  end

  it "logradouro maior do que 40 caracteres" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'Rua Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel', bairro: 'Jardim teste', numero_residencia: '42', cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end

  it "maior do que 40 caracteres" do
    u = Usuario.new(email: 'email@example.com', nome: 'sqa user', cpf: '123456789', telefone: '40028922', password:'123456')
    e = Endereco.new(logradouro: 'Rua do teste', bairro: 'Jardim Pedro de Alcântara Francisco ', numero_residencia: '42', cep: '12345678', usuario: u)
    expect(e).not_to be_valid
  end
end
