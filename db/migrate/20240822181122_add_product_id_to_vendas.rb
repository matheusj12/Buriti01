class AddProductIdToVendas < ActiveRecord::Migration[7.2]
  def change
    add_column :vendas, :product_id, :integer
  end
end
