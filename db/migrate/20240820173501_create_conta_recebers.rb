class CreateContaRecebers < ActiveRecord::Migration[7.2]
  def change
    create_table :conta_recebers do |t|
      t.string :cliente
      t.date :data_vencimento
      t.decimal :valor
      t.text :descricao
      t.string :status
      t.date :data_recebimento

      t.timestamps
    end
  end
end
