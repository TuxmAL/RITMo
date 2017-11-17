require 'test_helper'

class UtentiControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utento = utenti(:one)
  end

  test "should get index" do
    get utenti_url
    assert_response :success
  end

  test "should get new" do
    get new_utento_url
    assert_response :success
  end

  test "should create utento" do
    assert_difference('Utente.count') do
      post utenti_url, params: { utento: { amministratore: @utento.amministratore, attivo: @utento.attivo, name: @utento.name, note: @utento.note, password: 'secret', password_confirmation: 'secret', user_name: @utento.user_name } }
    end

    assert_redirected_to utento_url(Utente.last)
  end

  test "should show utento" do
    get utento_url(@utento)
    assert_response :success
  end

  test "should get edit" do
    get edit_utento_url(@utento)
    assert_response :success
  end

  test "should update utento" do
    patch utento_url(@utento), params: { utento: { amministratore: @utento.amministratore, attivo: @utento.attivo, name: @utento.name, note: @utento.note, password: 'secret', password_confirmation: 'secret', user_name: @utento.user_name } }
    assert_redirected_to utento_url(@utento)
  end

  test "should destroy utento" do
    assert_difference('Utente.count', -1) do
      delete utento_url(@utento)
    end

    assert_redirected_to utenti_url
  end
end
