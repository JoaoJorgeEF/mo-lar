class AddProfileFieldsToUsuarios < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :nome, :string
    add_column :usuarios, :cpf, :string
    add_column :usuarios, :telefone, :string
  end
end
