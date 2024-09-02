json.extract! pedido_compra, :id, :fornecedor, :data_pedido, :valor_total, :descricao, :status, :data_entrega, :created_at, :updated_at
json.url pedido_compra_url(pedido_compra, format: :json)
