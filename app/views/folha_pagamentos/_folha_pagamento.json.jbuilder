json.extract! folha_pagamento, :id, :funcionario, :data_pagamento, :salario, :descontos, :bonus, :total_pago, :created_at, :updated_at
json.url folha_pagamento_url(folha_pagamento, format: :json)
