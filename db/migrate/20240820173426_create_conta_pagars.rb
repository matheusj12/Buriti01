class CreateContaPagars < ActiveRecord::Migration[7.2]
  def change
    create_table :conta_pagars do |t|
      t.string :fornecedor
      t.date :data_vencimento
      t.decimal :valor
      t.text :descricao
      t.string :status
      t.date :data_pagamento

      t.timestamps
    end
  end
end
