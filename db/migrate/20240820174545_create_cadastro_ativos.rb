class CreateCadastroAtivos < ActiveRecord::Migration[7.2]
  def change
    create_table :cadastro_ativos do |t|
      t.string :nome
      t.text :descricao
      t.decimal :valor
      t.date :data_aquisicao
      t.string :localizacao
      t.string :status

      t.timestamps
    end
  end
end
