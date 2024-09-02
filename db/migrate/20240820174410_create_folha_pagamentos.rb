class CreateFolhaPagamentos < ActiveRecord::Migration[7.2]
  def change
    create_table :folha_pagamentos do |t|
      t.string :funcionario
      t.date :data_pagamento
      t.decimal :salario
      t.decimal :descontos
      t.decimal :bonus
      t.decimal :total_pago

      t.timestamps
    end
  end
end
