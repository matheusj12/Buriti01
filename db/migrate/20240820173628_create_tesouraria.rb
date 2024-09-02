class CreateTesouraria < ActiveRecord::Migration[7.2]
  def change
    create_table :tesouraria do |t|
      t.string :tipo
      t.date :data
      t.decimal :valor
      t.text :descricao
      t.string :categoria
      t.string :forma_pagamento

      t.timestamps
    end
  end
end
