class CreateFuncionarios < ActiveRecord::Migration[7.2]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.date :data_nascimento
      t.string :endereco
      t.string :telefone
      t.string :email
      t.string :cargo
      t.decimal :salario
      t.date :data_admissao
      t.boolean :ativo
      t.string :departamento
      t.string :genero
      t.string :estado_civil
      t.string :identificacao

      t.timestamps
    end
  end
end
