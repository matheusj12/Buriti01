json.extract! consulta_estoque, :id, :produto, :quantidade, :localizacao, :data_entrada, :data_saida, :valor_unitario, :created_at, :updated_at
json.url consulta_estoque_url(consulta_estoque, format: :json)
