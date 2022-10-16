class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :bairro
      t.string :numero_residencia
      t.string :cep
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
