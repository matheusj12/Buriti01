class RemoveIpFromImpressoras < ActiveRecord::Migration[7.2]
  def change
    remove_column :impressoras, :ip, :string
  end
end
