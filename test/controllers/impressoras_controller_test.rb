require "test_helper"

class ImpressorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @impressora = impressoras(:one)
  end

  test "should get index" do
    get impressoras_url
    assert_response :success
  end

  test "should get new" do
    get new_impressora_url
    assert_response :success
  end

  test "should create impressora" do
    assert_difference("Impressora.count") do
      post impressoras_url, params: { impressora: { IP: @impressora.IP, ativa: @impressora.ativa, departamento: @impressora.departamento, info: @impressora.info, info1: @impressora.info1, info3: @impressora.info3, info4: @impressora.info4, info5: @impressora.info5, ip: @impressora.ip, loja: @impressora.loja, modelo: @impressora.modelo, nGps: @impressora.nGps, nPatrimonio: @impressora.nPatrimonio, nSerie: @impressora.nSerie, proprietario: @impressora.proprietario, tempodeuso: @impressora.tempodeuso, tonerModelo: @impressora.tonerModelo } }
    end

    assert_redirected_to impressora_url(Impressora.last)
  end

  test "should show impressora" do
    get impressora_url(@impressora)
    assert_response :success
  end

  test "should get edit" do
    get edit_impressora_url(@impressora)
    assert_response :success
  end

  test "should update impressora" do
    patch impressora_url(@impressora), params: { impressora: { IP: @impressora.IP, ativa: @impressora.ativa, departamento: @impressora.departamento, info: @impressora.info, info1: @impressora.info1, info3: @impressora.info3, info4: @impressora.info4, info5: @impressora.info5, ip: @impressora.ip, loja: @impressora.loja, modelo: @impressora.modelo, nGps: @impressora.nGps, nPatrimonio: @impressora.nPatrimonio, nSerie: @impressora.nSerie, proprietario: @impressora.proprietario, tempodeuso: @impressora.tempodeuso, tonerModelo: @impressora.tonerModelo } }
    assert_redirected_to impressora_url(@impressora)
  end

  test "should destroy impressora" do
    assert_difference("Impressora.count", -1) do
      delete impressora_url(@impressora)
    end

    assert_redirected_to impressoras_url
  end
end
