json.extract! ordem_pagamento, :id, :fornecedor, :data_emissao, :valor, :descricao, :data_pagamento, :status, :created_at, :updated_at
json.url ordem_pagamento_url(ordem_pagamento, format: :json)
