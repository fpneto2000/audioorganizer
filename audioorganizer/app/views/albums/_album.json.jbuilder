json.extract! album, :id, :nome, :isrc, :data_lancamento, :quant_faixas, :tempo_estimado, :valor_orcado, :observacao, :created_at, :updated_at
json.url album_url(album, format: :json)
