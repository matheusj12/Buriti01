json.extract! cadastro_ativo, :id, :nome, :descricao, :valor, :data_aquisicao, :localizacao, :status, :created_at, :updated_at
json.url cadastro_ativo_url(cadastro_ativo, format: :json)
