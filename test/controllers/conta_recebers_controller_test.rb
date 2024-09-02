require "test_helper"

class ContaRecebersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conta_receber = conta_recebers(:one)
  end

  test "should get index" do
    get conta_recebers_url
    assert_response :success
  end

  test "should get new" do
    get new_conta_receber_url
    assert_response :success
  end

  test "should create conta_receber" do
    assert_difference("ContaReceber.count") do
      post conta_recebers_url, params: { conta_receber: { cliente: @conta_receber.cliente, data_recebimento: @conta_receber.data_recebimento, data_vencimento: @conta_receber.data_vencimento, descricao: @conta_receber.descricao, status: @conta_receber.status, valor: @conta_receber.valor } }
    end

    assert_redirected_to conta_receber_url(ContaReceber.last)
  end

  test "should show conta_receber" do
    get conta_receber_url(@conta_receber)
    assert_response :success
  end

  test "should get edit" do
    get edit_conta_receber_url(@conta_receber)
    assert_response :success
  end

  test "should update conta_receber" do
    patch conta_receber_url(@conta_receber), params: { conta_receber: { cliente: @conta_receber.cliente, data_recebimento: @conta_receber.data_recebimento, data_vencimento: @conta_receber.data_vencimento, descricao: @conta_receber.descricao, status: @conta_receber.status, valor: @conta_receber.valor } }
    assert_redirected_to conta_receber_url(@conta_receber)
  end

  test "should destroy conta_receber" do
    assert_difference("ContaReceber.count", -1) do
      delete conta_receber_url(@conta_receber)
    end

    assert_redirected_to conta_recebers_url
  end
end
