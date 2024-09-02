json.extract! funcionario, :id, :nome, :cpf, :data_nascimento, :endereco, :telefone, :email, :cargo, :salario, :data_admissao, :ativo, :departamento, :genero, :estado_civil, :identificacao, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
