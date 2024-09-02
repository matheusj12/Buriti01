class CreateProcessoAdmissaos < ActiveRecord::Migration[7.2]
  def change
    create_table :processo_admissaos do |t|
      t.string :funcionario
      t.date :data_admissao
      t.string :cargo
      t.decimal :salario
      t.string :departamento
      t.string :status
      t.date :data_entrega_documentos

      t.timestamps
    end
  end
end
