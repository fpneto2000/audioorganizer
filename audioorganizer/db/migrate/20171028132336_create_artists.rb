class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :nome
      t.string :cpfcnpj
      t.string :rg_ie
      t.string :pessoa
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :cep
      t.string :telefone
      t.string :contato
      t.string :celular
      t.string :observacao

      t.timestamps
    end
  end
end
