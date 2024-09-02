class CreateFluxoCaixas < ActiveRecord::Migration[7.2]
  def change
    create_table :fluxo_caixas do |t|
      t.string :tipo
      t.date :data
      t.decimal :valor
      t.text :descricao
      t.string :categoria

      t.timestamps
    end
  end
end
