json.extract! relatorio, :id, :nome, :tipo, :descricao, :data_geracao, :conteudo, :created_at, :updated_at
json.url relatorio_url(relatorio, format: :json)
