class CreateTitulosEmAbertos < ActiveRecord::Migration[7.2]
  def change
    create_table :titulos_em_abertos do |t|
      t.string :cliente
      t.date :data_vencimento
      t.decimal :valor
      t.text :descricao
      t.string :status

      t.timestamps
    end
  end
end
