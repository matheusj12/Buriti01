class CreateProjetos < ActiveRecord::Migration[7.2]
  def change
    create_table :projetos do |t|
      t.string :nome
      t.text :descricao
      t.date :data_inicio
      t.date :data_fim
      t.string :status
      t.string :prioridade
      t.string :responsavel

      t.timestamps
    end
  end
end
