json.extract! compra, :id, :fornecedor, :data_compra, :valor_total, :produto, :quantidade, :metodo_pagamento, :status, :observacoes, :created_at, :updated_at
json.url compra_url(compra, format: :json)
