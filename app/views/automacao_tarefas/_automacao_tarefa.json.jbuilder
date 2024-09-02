json.extract! automacao_tarefa, :id, :nome, :descricao, :horario, :frequencia, :ativo, :created_at, :updated_at
json.url automacao_tarefa_url(automacao_tarefa, format: :json)
