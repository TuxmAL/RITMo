require 'test_helper'

class AnagraficheControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anagrafica = anagrafiche(:one)
  end

  test 'should get index' do
    get anagrafiche_url
    assert_response :success
  end

  test 'should get new' do
    get new_anagrafica_url
    assert_response :success
  end

  test 'should create anagrafica' do
    assert_difference('Anagrafica.count') do
      post anagrafiche_url, params: { anagrafica: { cognome: @anagrafica.cognome, datanascita: @anagrafica.datanascita, id: @anagrafica.id, luogonascita_id: @anagrafica.luogonascita_id, nome: @anagrafica.nome, note: @anagrafica.note, parente_id: @anagrafica.parente_id, parentela_id: @anagrafica.parentela_id, recapiti: @anagrafica.recapiti, sesso_id: @anagrafica.sesso_id, utente_id: @anagrafica.utente_id } }
    end

    assert_redirected_to anagrafica_url(Anagrafica.last)
  end

  test 'should show anagrafica' do
    get anagrafica_url(@anagrafica)
    assert_response :success
  end

  test 'should get edit' do
    get edit_anagrafica_url(@anagrafica)
    assert_response :success
  end

  test 'should update anagrafica' do
    patch anagrafica_url(@anagrafica), params: { anagrafica: { cognome: @anagrafica.cognome, datanascita: @anagrafica.datanascita, id: @anagrafica.id, luogonascita_id: @anagrafica.luogonascita_id, nome: @anagrafica.nome, note: @anagrafica.note, parente_id: @anagrafica.parente_id, parentela_id: @anagrafica.parentela_id, recapiti: @anagrafica.recapiti, sesso_id: @anagrafica.sesso_id, utente_id: @anagrafica.utente_id } }
    assert_redirected_to anagrafica_url(@anagrafica)
  end

  test 'should destroy anagrafica' do
    assert_difference('Anagrafica.count', -1) do
      delete anagrafica_url(@anagrafica)
    end

    assert_redirected_to anagrafiche_url
  end
end
