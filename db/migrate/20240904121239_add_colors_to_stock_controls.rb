class AddColorsToStockControls < ActiveRecord::Migration[7.2]
  def change
    add_column :stock_controls, :ciano, :integer
    add_column :stock_controls, :magenta, :integer
    add_column :stock_controls, :amarelo, :integer
    add_column :stock_controls, :preto, :integer
  end
end
