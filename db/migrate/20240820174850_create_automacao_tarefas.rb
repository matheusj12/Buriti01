class CreateAutomacaoTarefas < ActiveRecord::Migration[7.2]
  def change
    create_table :automacao_tarefas do |t|
      t.string :nome
      t.text :descricao
      t.time :horario
      t.string :frequencia
      t.boolean :ativo

      t.timestamps
    end
  end
end
