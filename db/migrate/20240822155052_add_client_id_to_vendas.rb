class AddClientIdToVendas < ActiveRecord::Migration[7.2]
  def change
    add_column :vendas, :client_id, :integer
  end
end
