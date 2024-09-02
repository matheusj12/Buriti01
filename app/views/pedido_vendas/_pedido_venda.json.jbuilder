json.extract! pedido_venda, :id, :cliente, :data_pedido, :valor_total, :descricao, :status, :data_entrega, :created_at, :updated_at
json.url pedido_venda_url(pedido_venda, format: :json)
