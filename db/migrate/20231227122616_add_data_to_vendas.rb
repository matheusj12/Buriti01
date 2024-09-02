class AddDataToVendas < ActiveRecord::Migration[7.0]
  def change
    add_column :vendas, :data, :date
  end
end
