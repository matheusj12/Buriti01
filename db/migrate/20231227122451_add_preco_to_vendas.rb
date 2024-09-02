class AddPrecoToVendas < ActiveRecord::Migration[7.0]
  def change
    add_column :vendas, :preco, :decimal
  end
end
