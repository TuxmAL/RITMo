require 'test_helper'

class AnagraficheControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anagraficha = anagrafiche(:one)
  end

  test "should get index" do
    get anagrafiche_url
    assert_response :success
  end

  test "should get new" do
    get new_anagraficha_url
    assert_response :success
  end

  test "should create anagraficha" do
    assert_difference('Anagrafica.count') do
      post anagrafiche_url, params: { anagraficha: { cognome: @anagraficha.cognome, datanascita: @anagraficha.datanascita, id: @anagraficha.id, luogonascita_id: @anagraficha.luogonascita_id, nome: @anagraficha.nome, note: @anagraficha.note, parente_id: @anagraficha.parente_id, parentela_id: @anagraficha.parentela_id, recapiti: @anagraficha.recapiti, sesso_id: @anagraficha.sesso_id, utente_id: @anagraficha.utente_id } }
    end

    assert_redirected_to anagraficha_url(Anagrafica.last)
  end

  test "should show anagraficha" do
    get anagraficha_url(@anagraficha)
    assert_response :success
  end

  test "should get edit" do
    get edit_anagraficha_url(@anagraficha)
    assert_response :success
  end

  test "should update anagraficha" do
    patch anagraficha_url(@anagraficha), params: { anagraficha: { cognome: @anagraficha.cognome, datanascita: @anagraficha.datanascita, id: @anagraficha.id, luogonascita_id: @anagraficha.luogonascita_id, nome: @anagraficha.nome, note: @anagraficha.note, parente_id: @anagraficha.parente_id, parentela_id: @anagraficha.parentela_id, recapiti: @anagraficha.recapiti, sesso_id: @anagraficha.sesso_id, utente_id: @anagraficha.utente_id } }
    assert_redirected_to anagraficha_url(@anagraficha)
  end

  test "should destroy anagraficha" do
    assert_difference('Anagrafica.count', -1) do
      delete anagraficha_url(@anagraficha)
    end

    assert_redirected_to anagrafiche_url
  end
end
