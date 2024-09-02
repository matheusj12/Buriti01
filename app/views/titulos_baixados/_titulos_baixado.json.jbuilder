json.extract! titulos_baixado, :id, :cliente, :data_vencimento, :valor, :descricao, :data_pagamento, :created_at, :updated_at
json.url titulos_baixado_url(titulos_baixado, format: :json)
