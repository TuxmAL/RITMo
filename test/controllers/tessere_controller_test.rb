require 'test_helper'

class TessereControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tessera = tessere(:one)
  end

  test 'should get index' do
    get tessere_url
    assert_response :success
  end

  test 'should get new' do
    get new_tessera_url
    assert_response :success
  end

  test 'should create tessera' do
    assert_difference('Tessera.count') do
      post tessere_url, params: { tessera: { anagrafico_id: @tessera.anagrafico_id, annullata: @tessera.annullata, capelli: @tessera.capelli, data_convalida: @tessera.data_convalida, data_rilascio: @tessera.data_rilascio, id: @tessera.id, indirizzo: @tessera.indirizzo, integer: @tessera.integer, intestatario_id: @tessera.intestatario_id, note: @tessera.note, numero_tessera: @tessera.numero_tessera, occhi: @tessera.occhi, qualifica_id: @tessera.qualifica_id, residenza_id: @tessera.residenza_id, segni_particolari: @tessera.segni_particolari, stampata: @tessera.stampata, statocivile_id: @tessera.statocivile_id, statura: @tessera.statura, string: @tessera.string, tipo_tessera_id: @tessera.tipo_tessera_id, tiporichiesta_id: @tessera.tiporichiesta_id, utente_id: @tessera.utente_id, variazioni_due: @tessera.variazioni_due, variazioni_tre: @tessera.variazioni_tre, variazioni_uno: @tessera.variazioni_uno } }
    end

    assert_redirected_to tessera_url(Tessera.last)
  end

  test 'should show tessera' do
    get tessera_url(@tessera)
    assert_response :success
  end

  test 'should get edit' do
    get edit_tessera_url(@tessera)
    assert_response :success
  end

  test 'should update tessera' do
    patch tessera_url(@tessera), params: { tessera: { anagrafico_id: @tessera.anagrafico_id, annullata: @tessera.annullata, capelli: @tessera.capelli, data_convalida: @tessera.data_convalida, data_rilascio: @tessera.data_rilascio, id: @tessera.id, indirizzo: @tessera.indirizzo, integer: @tessera.integer, intestatario_id: @tessera.intestatario_id, note: @tessera.note, numero_tessera: @tessera.numero_tessera, occhi: @tessera.occhi, qualifica_id: @tessera.qualifica_id, residenza_id: @tessera.residenza_id, segni_particolari: @tessera.segni_particolari, stampata: @tessera.stampata, statocivile_id: @tessera.statocivile_id, statura: @tessera.statura, string: @tessera.string, tipo_tessera_id: @tessera.tipo_tessera_id, tiporichiesta_id: @tessera.tiporichiesta_id, utente_id: @tessera.utente_id, variazioni_due: @tessera.variazioni_due, variazioni_tre: @tessera.variazioni_tre, variazioni_uno: @tessera.variazioni_uno } }
    assert_redirected_to tessera_url(@tessera)
  end

  test 'should destroy tessera' do
    assert_difference('Tessera.count', -1) do
      delete tessera_url(@tessera)
    end

    assert_redirected_to tessere_url
  end
end
