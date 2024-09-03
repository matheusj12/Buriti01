class AddFotosToImpressoras < ActiveRecord::Migration[7.2]
  def change
    add_column :impressoras, :foto, :string
    add_column :impressoras, :toner_foto, :string
  end
end
