class CreateOrdemPagamentos < ActiveRecord::Migration[7.2]
  def change
    create_table :ordem_pagamentos do |t|
      t.string :fornecedor
      t.date :data_emissao
      t.decimal :valor
      t.text :descricao
      t.date :data_pagamento
      t.string :status

      t.timestamps
    end
  end
end
