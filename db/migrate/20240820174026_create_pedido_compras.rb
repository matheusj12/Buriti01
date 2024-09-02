class CreatePedidoCompras < ActiveRecord::Migration[7.2]
  def change
    create_table :pedido_compras do |t|
      t.string :fornecedor
      t.date :data_pedido
      t.decimal :valor_total
      t.text :descricao
      t.string :status
      t.date :data_entrega

      t.timestamps
    end
  end
end
