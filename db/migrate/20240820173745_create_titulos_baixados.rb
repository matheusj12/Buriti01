class CreateTitulosBaixados < ActiveRecord::Migration[7.2]
  def change
    create_table :titulos_baixados do |t|
      t.string :cliente
      t.date :data_vencimento
      t.decimal :valor
      t.text :descricao
      t.date :data_pagamento

      t.timestamps
    end
  end
end
