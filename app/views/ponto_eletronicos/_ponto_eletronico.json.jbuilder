json.extract! ponto_eletronico, :id, :funcionario, :data, :hora_entrada, :hora_saida, :horas_trabalhadas, :created_at, :updated_at
json.url ponto_eletronico_url(ponto_eletronico, format: :json)
