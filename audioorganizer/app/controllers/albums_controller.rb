class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @albums = Album.all
    respond_with(@albums)
  end

  def show
    respond_with(@album)
  end

  def new
    @album = Album.new
    @artists = Artist.all
    respond_with(@album)
  end

  def edit
    @artists = Artist.all
  end

  def create
    @album = Album.new(album_params)
    @album.save
    respond_with(@album)
  end

  def update
    @album.update(album_params)
    respond_with(@album)
  end

  def destroy
    @album.destroy
    respond_with(@album)
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(:artist_id, :nome, :isrc, :data_lancamento, :quant_faixas, :tempo_estimado, :valor_orcado, :observacao)
    end
end
