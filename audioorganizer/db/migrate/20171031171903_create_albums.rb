class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :nome
      t.string :isrc
      t.date :data_lancamento
      t.integer :quant_faixas
      t.decimal :tempo_estimado
      t.decimal :valor_orcado
      t.text :observacao

      t.timestamps
    end
  end
end
