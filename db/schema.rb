# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_09_04_125837) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "content"
    t.datetime "published_at"
    t.string "author_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "body"
    t.string "author"
    t.string "tags"
  end

  create_table "automacao_tarefas", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.time "horario"
    t.string "frequencia"
    t.boolean "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cadastro_ativos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.decimal "valor"
    t.date "data_aquisicao"
    t.string "localizacao"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compras", force: :cascade do |t|
    t.string "fornecedor"
    t.date "data_compra"
    t.decimal "valor_total"
    t.string "produto"
    t.integer "quantidade"
    t.string "metodo_pagamento"
    t.string "status"
    t.text "observacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consulta_estoques", force: :cascade do |t|
    t.string "produto"
    t.integer "quantidade"
    t.string "localizacao"
    t.date "data_entrada"
    t.date "data_saida"
    t.decimal "valor_unitario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conta_pagars", force: :cascade do |t|
    t.string "fornecedor"
    t.date "data_vencimento"
    t.decimal "valor"
    t.text "descricao"
    t.string "status"
    t.date "data_pagamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conta_recebers", force: :cascade do |t|
    t.string "cliente"
    t.date "data_vencimento"
    t.decimal "valor"
    t.text "descricao"
    t.string "status"
    t.date "data_recebimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fluxo_caixas", force: :cascade do |t|
    t.string "tipo"
    t.date "data"
    t.decimal "valor"
    t.text "descricao"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "folha_pagamentos", force: :cascade do |t|
    t.string "funcionario"
    t.date "data_pagamento"
    t.decimal "salario"
    t.decimal "descontos"
    t.decimal "bonus"
    t.decimal "total_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "endereco"
    t.string "telefone"
    t.string "email"
    t.string "contato"
    t.text "observacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.date "data_nascimento"
    t.string "endereco"
    t.string "telefone"
    t.string "email"
    t.string "cargo"
    t.decimal "salario"
    t.date "data_admissao"
    t.boolean "ativo"
    t.string "departamento"
    t.string "genero"
    t.string "estado_civil"
    t.string "identificacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gerenciamento_contas_bancaria", force: :cascade do |t|
    t.string "banco"
    t.string "agencia"
    t.string "conta"
    t.string "tipo"
    t.decimal "saldo"
    t.date "data_abertura"
    t.string "titular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gestao_beneficios", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.decimal "valor"
    t.date "data_inicio"
    t.date "data_fim"
    t.boolean "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impressoras", force: :cascade do |t|
    t.string "departamento"
    t.string "loja"
    t.string "proprietario"
    t.string "modelo"
    t.string "nPatrimonio"
    t.string "nSerie"
    t.string "nGps"
    t.string "tonerModelo"
    t.boolean "ativa"
    t.integer "tempodeuso"
    t.text "info"
    t.text "info1"
    t.text "info3"
    t.text "info4"
    t.text "info5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "foto"
    t.string "toner_foto"
    t.integer "toner_quantity"
    t.integer "stock"
    t.integer "preto_quantity"
    t.integer "ciano_quantity"
    t.integer "magenta_quantity"
    t.integer "amarelo_quantity"
    t.string "ip"
  end

  create_table "ordem_pagamentos", force: :cascade do |t|
    t.string "fornecedor"
    t.date "data_emissao"
    t.decimal "valor"
    t.text "descricao"
    t.date "data_pagamento"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedido_compras", force: :cascade do |t|
    t.string "fornecedor"
    t.date "data_pedido"
    t.decimal "valor_total"
    t.text "descricao"
    t.string "status"
    t.date "data_entrega"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedido_vendas", force: :cascade do |t|
    t.string "cliente"
    t.date "data_pedido"
    t.decimal "valor_total"
    t.text "descricao"
    t.string "status"
    t.date "data_entrega"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ponto_eletronicos", force: :cascade do |t|
    t.string "funcionario"
    t.date "data"
    t.time "hora_entrada"
    t.time "hora_saida"
    t.decimal "horas_trabalhadas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "processo_admissaos", force: :cascade do |t|
    t.string "funcionario"
    t.date "data_admissao"
    t.string "cargo"
    t.decimal "salario"
    t.string "departamento"
    t.string "status"
    t.date "data_entrega_documentos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projetos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.date "data_inicio"
    t.date "data_fim"
    t.string "status"
    t.string "prioridade"
    t.string "responsavel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relatorios", force: :cascade do |t|
    t.string "nome"
    t.string "tipo"
    t.text "descricao"
    t.date "data_geracao"
    t.text "conteudo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_controls", force: :cascade do |t|
    t.integer "impressora_id", null: false
    t.integer "quantity"
    t.string "operation_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "preto_quantity"
    t.integer "ciano_quantity"
    t.integer "magenta_quantity"
    t.integer "amarelo_quantity"
    t.integer "ciano"
    t.integer "magenta"
    t.integer "amarelo"
    t.integer "preto"
    t.index ["impressora_id"], name: "index_stock_controls_on_impressora_id"
  end

  create_table "stock_movements", force: :cascade do |t|
    t.integer "stock_control_id", null: false
    t.integer "quantity"
    t.string "movement_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stock_control_id"], name: "index_stock_movements_on_stock_control_id"
  end

  create_table "tesouraria", force: :cascade do |t|
    t.string "tipo"
    t.date "data"
    t.decimal "valor"
    t.text "descricao"
    t.string "categoria"
    t.string "forma_pagamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titulos_baixados", force: :cascade do |t|
    t.string "cliente"
    t.date "data_vencimento"
    t.decimal "valor"
    t.text "descricao"
    t.date "data_pagamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titulos_em_abertos", force: :cascade do |t|
    t.string "cliente"
    t.date "data_vencimento"
    t.decimal "valor"
    t.text "descricao"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendas", force: :cascade do |t|
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "preco"
    t.date "data"
    t.integer "client_id"
    t.integer "product_id"
  end

  create_table "vpns", force: :cascade do |t|
    t.string "local"
    t.string "nomedaconexao"
    t.string "gatewayremoto"
    t.string "chave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "stock_controls", "impressoras"
  add_foreign_key "stock_movements", "stock_controls"
end
