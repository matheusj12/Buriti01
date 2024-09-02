json.extract! fluxo_caixa, :id, :tipo, :data, :valor, :descricao, :categoria, :created_at, :updated_at
json.url fluxo_caixa_url(fluxo_caixa, format: :json)
