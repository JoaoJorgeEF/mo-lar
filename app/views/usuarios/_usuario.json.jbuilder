json.(usuario, :id, :email, :username, :nome, :cpf, :telefone)
json.token usuario.generate_jwt