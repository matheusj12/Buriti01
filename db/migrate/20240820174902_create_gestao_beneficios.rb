class CreateGestaoBeneficios < ActiveRecord::Migration[7.2]
  def change
    create_table :gestao_beneficios do |t|
      t.string :nome
      t.text :descricao
      t.decimal :valor
      t.date :data_inicio
      t.date :data_fim
      t.boolean :ativo

      t.timestamps
    end
  end
end
