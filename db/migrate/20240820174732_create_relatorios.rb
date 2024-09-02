class CreateRelatorios < ActiveRecord::Migration[7.2]
  def change
    create_table :relatorios do |t|
      t.string :nome
      t.string :tipo
      t.text :descricao
      t.date :data_geracao
      t.text :conteudo

      t.timestamps
    end
  end
end
