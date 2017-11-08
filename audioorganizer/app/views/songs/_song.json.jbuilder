json.extract! song, :id, :titulo, :seq_faixa, :tempo, :bpm, :data_gravacao, :quant_tracks, :observacao, :created_at, :updated_at
json.url song_url(song, format: :json)
