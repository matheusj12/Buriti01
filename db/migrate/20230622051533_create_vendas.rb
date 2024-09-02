class CreateVendas < ActiveRecord::Migration[7.0]
  def change
    create_table :vendas do |t|
      t.string :produto
      t.integer :quantidade

      t.timestamps
    end
  end
end
