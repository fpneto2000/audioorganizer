class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :titulo
      t.integer :seq_faixa
      t.time :tempo
      t.integer :bpm
      t.date :data_gravacao
      t.integer :quant_tracks
      t.text :observacao

      t.timestamps
    end
  end
end
