class CreateGerenciamentoContasBancaria < ActiveRecord::Migration[7.2]
  def change
    create_table :gerenciamento_contas_bancaria do |t|
      t.string :banco
      t.string :agencia
      t.string :conta
      t.string :tipo
      t.decimal :saldo
      t.date :data_abertura
      t.string :titular

      t.timestamps
    end
  end
end
