class CreatePedidoVendas < ActiveRecord::Migration[7.2]
  def change
    create_table :pedido_vendas do |t|
      t.string :cliente
      t.date :data_pedido
      t.decimal :valor_total
      t.text :descricao
      t.string :status
      t.date :data_entrega

      t.timestamps
    end
  end
end
