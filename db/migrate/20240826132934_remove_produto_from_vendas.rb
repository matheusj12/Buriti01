class RemoveProdutoFromVendas < ActiveRecord::Migration[7.2]
  def change
    remove_column :vendas, :produto, :string
  end
end
