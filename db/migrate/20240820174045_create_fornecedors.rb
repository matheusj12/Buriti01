class CreateFornecedors < ActiveRecord::Migration[7.2]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :cnpj
      t.string :endereco
      t.string :telefone
      t.string :email
      t.string :contato
      t.text :observacoes

      t.timestamps
    end
  end
end
