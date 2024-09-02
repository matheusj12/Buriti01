require "test_helper"

class TitulosBaixadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @titulos_baixado = titulos_baixados(:one)
  end

  test "should get index" do
    get titulos_baixados_url
    assert_response :success
  end

  test "should get new" do
    get new_titulos_baixado_url
    assert_response :success
  end

  test "should create titulos_baixado" do
    assert_difference("TitulosBaixado.count") do
      post titulos_baixados_url, params: { titulos_baixado: { cliente: @titulos_baixado.cliente, data_pagamento: @titulos_baixado.data_pagamento, data_vencimento: @titulos_baixado.data_vencimento, descricao: @titulos_baixado.descricao, valor: @titulos_baixado.valor } }
    end

    assert_redirected_to titulos_baixado_url(TitulosBaixado.last)
  end

  test "should show titulos_baixado" do
    get titulos_baixado_url(@titulos_baixado)
    assert_response :success
  end

  test "should get edit" do
    get edit_titulos_baixado_url(@titulos_baixado)
    assert_response :success
  end

  test "should update titulos_baixado" do
    patch titulos_baixado_url(@titulos_baixado), params: { titulos_baixado: { cliente: @titulos_baixado.cliente, data_pagamento: @titulos_baixado.data_pagamento, data_vencimento: @titulos_baixado.data_vencimento, descricao: @titulos_baixado.descricao, valor: @titulos_baixado.valor } }
    assert_redirected_to titulos_baixado_url(@titulos_baixado)
  end

  test "should destroy titulos_baixado" do
    assert_difference("TitulosBaixado.count", -1) do
      delete titulos_baixado_url(@titulos_baixado)
    end

    assert_redirected_to titulos_baixados_url
  end
end
