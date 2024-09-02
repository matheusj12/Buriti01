class CreateConsultaEstoques < ActiveRecord::Migration[7.2]
  def change
    create_table :consulta_estoques do |t|
      t.string :produto
      t.integer :quantidade
      t.string :localizacao
      t.date :data_entrada
      t.date :data_saida
      t.decimal :valor_unitario

      t.timestamps
    end
  end
end
