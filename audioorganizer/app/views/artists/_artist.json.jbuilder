json.extract! artist, :id, :nome, :cpfcnpj, :rg_ie, :pessoa, :endereco, :bairro, :cidade, :uf, :cep, :telefone, :contato, :celular, :observacao, :created_at, :updated_at
json.url artist_url(artist, format: :json)
