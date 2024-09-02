json.extract! projeto, :id, :nome, :descricao, :data_inicio, :data_fim, :status, :prioridade, :responsavel, :created_at, :updated_at
json.url projeto_url(projeto, format: :json)
