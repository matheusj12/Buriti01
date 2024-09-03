class CreateImpressoras < ActiveRecord::Migration[7.2]
  def change
    create_table :impressoras do |t|
      t.string :departamento
      t.string :loja
      t.string :ip
      t.string :proprietario
      t.string :modelo
      t.string :nPatrimonio
      t.string :nSerie
      t.string :nGps
      t.string :tonerModelo
      t.boolean :ativa
      t.integer :tempodeuso
      t.text :info
      t.text :info1
      t.text :info3
      t.text :info4
      t.text :info5

      t.timestamps
    end
  end
end
