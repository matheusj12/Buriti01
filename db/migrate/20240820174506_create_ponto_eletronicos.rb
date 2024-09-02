class CreatePontoEletronicos < ActiveRecord::Migration[7.2]
  def change
    create_table :ponto_eletronicos do |t|
      t.string :funcionario
      t.date :data
      t.time :hora_entrada
      t.time :hora_saida
      t.decimal :horas_trabalhadas

      t.timestamps
    end
  end
end
