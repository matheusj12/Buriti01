class CreateVpns < ActiveRecord::Migration[7.2]
  def change
    create_table :vpns do |t|
      t.string :local
      t.string :nomedaconexao
      t.string :gatewayremoto
      t.string :chave

      t.timestamps
    end
  end
end
