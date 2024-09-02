json.extract! processo_admissao, :id, :funcionario, :data_admissao, :cargo, :salario, :departamento, :status, :data_entrega_documentos, :created_at, :updated_at
json.url processo_admissao_url(processo_admissao, format: :json)
