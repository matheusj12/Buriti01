class CreateCompras < ActiveRecord::Migration[7.2]
  def change
    create_table :compras do |t|
      t.string :fornecedor
      t.date :data_compra
      t.decimal :valor_total
      t.string :produto
      t.integer :quantidade
      t.string :metodo_pagamento
      t.string :status
      t.text :observacoes

      t.timestamps
    end
  end
end
