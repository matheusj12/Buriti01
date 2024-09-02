json.extract! titulos_em_aberto, :id, :cliente, :data_vencimento, :valor, :descricao, :status, :created_at, :updated_at
json.url titulos_em_aberto_url(titulos_em_aberto, format: :json)
