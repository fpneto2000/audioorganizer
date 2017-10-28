require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post :create, artist: { bairro: @artist.bairro, celular: @artist.celular, cep: @artist.cep, cidade: @artist.cidade, contato: @artist.contato, cpfcnpj: @artist.cpfcnpj, endereco: @artist.endereco, nome: @artist.nome, observacao: @artist.observacao, pessoa: @artist.pessoa, rg_ie: @artist.rg_ie, telefone: @artist.telefone, uf: @artist.uf }
    end

    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should show artist" do
    get :show, id: @artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist
    assert_response :success
  end

  test "should update artist" do
    patch :update, id: @artist, artist: { bairro: @artist.bairro, celular: @artist.celular, cep: @artist.cep, cidade: @artist.cidade, contato: @artist.contato, cpfcnpj: @artist.cpfcnpj, endereco: @artist.endereco, nome: @artist.nome, observacao: @artist.observacao, pessoa: @artist.pessoa, rg_ie: @artist.rg_ie, telefone: @artist.telefone, uf: @artist.uf }
    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete :destroy, id: @artist
    end

    assert_redirected_to artists_path
  end
end
