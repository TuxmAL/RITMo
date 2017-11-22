require 'test_helper'

class ComuniControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comune = comuni(:one)
  end

  test "should get index" do
    get comuni_url
    assert_response :success
  end

  test "should get new" do
    get new_comune_url
    assert_response :success
  end

  test "should create comune" do
    assert_difference('Comune.count') do
      post comuni_url, params: { comune: {  } }
    end

    assert_redirected_to comune_url(Comune.last)
  end

  test "should show comune" do
    get comune_url(@comune)
    assert_response :success
  end

  test "should get edit" do
    get edit_comune_url(@comune)
    assert_response :success
  end

  test "should update comune" do
    patch comune_url(@comune), params: { comune: {  } }
    assert_redirected_to comune_url(@comune)
  end

  test "should destroy comune" do
    assert_difference('Comune.count', -1) do
      delete comune_url(@comune)
    end

    assert_redirected_to comuni_url
  end
end
