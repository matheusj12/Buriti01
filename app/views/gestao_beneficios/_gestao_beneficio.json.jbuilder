json.extract! gestao_beneficio, :id, :nome, :descricao, :valor, :data_inicio, :data_fim, :ativo, :created_at, :updated_at
json.url gestao_beneficio_url(gestao_beneficio, format: :json)
