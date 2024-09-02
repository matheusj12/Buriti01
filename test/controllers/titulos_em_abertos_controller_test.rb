require "test_helper"

class TitulosEmAbertosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @titulos_em_aberto = titulos_em_abertos(:one)
  end

  test "should get index" do
    get titulos_em_abertos_url
    assert_response :success
  end

  test "should get new" do
    get new_titulos_em_aberto_url
    assert_response :success
  end

  test "should create titulos_em_aberto" do
    assert_difference("TitulosEmAberto.count") do
      post titulos_em_abertos_url, params: { titulos_em_aberto: { cliente: @titulos_em_aberto.cliente, data_vencimento: @titulos_em_aberto.data_vencimento, descricao: @titulos_em_aberto.descricao, status: @titulos_em_aberto.status, valor: @titulos_em_aberto.valor } }
    end

    assert_redirected_to titulos_em_aberto_url(TitulosEmAberto.last)
  end

  test "should show titulos_em_aberto" do
    get titulos_em_aberto_url(@titulos_em_aberto)
    assert_response :success
  end

  test "should get edit" do
    get edit_titulos_em_aberto_url(@titulos_em_aberto)
    assert_response :success
  end

  test "should update titulos_em_aberto" do
    patch titulos_em_aberto_url(@titulos_em_aberto), params: { titulos_em_aberto: { cliente: @titulos_em_aberto.cliente, data_vencimento: @titulos_em_aberto.data_vencimento, descricao: @titulos_em_aberto.descricao, status: @titulos_em_aberto.status, valor: @titulos_em_aberto.valor } }
    assert_redirected_to titulos_em_aberto_url(@titulos_em_aberto)
  end

  test "should destroy titulos_em_aberto" do
    assert_difference("TitulosEmAberto.count", -1) do
      delete titulos_em_aberto_url(@titulos_em_aberto)
    end

    assert_redirected_to titulos_em_abertos_url
  end
end
