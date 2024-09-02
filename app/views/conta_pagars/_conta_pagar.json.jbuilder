json.extract! conta_pagar, :id, :fornecedor, :data_vencimento, :valor, :descricao, :status, :data_pagamento, :created_at, :updated_at
json.url conta_pagar_url(conta_pagar, format: :json)
