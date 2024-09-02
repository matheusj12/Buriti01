require "test_helper"

class GerenciamentoContasBancariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gerenciamento_contas_bancarium = gerenciamento_contas_bancaria(:one)
  end

  test "should get index" do
    get gerenciamento_contas_bancaria_url
    assert_response :success
  end

  test "should get new" do
    get new_gerenciamento_contas_bancarium_url
    assert_response :success
  end

  test "should create gerenciamento_contas_bancarium" do
    assert_difference("GerenciamentoContasBancarium.count") do
      post gerenciamento_contas_bancaria_url, params: { gerenciamento_contas_bancarium: { agencia: @gerenciamento_contas_bancarium.agencia, banco: @gerenciamento_contas_bancarium.banco, conta: @gerenciamento_contas_bancarium.conta, data_abertura: @gerenciamento_contas_bancarium.data_abertura, saldo: @gerenciamento_contas_bancarium.saldo, tipo: @gerenciamento_contas_bancarium.tipo, titular: @gerenciamento_contas_bancarium.titular } }
    end

    assert_redirected_to gerenciamento_contas_bancarium_url(GerenciamentoContasBancarium.last)
  end

  test "should show gerenciamento_contas_bancarium" do
    get gerenciamento_contas_bancarium_url(@gerenciamento_contas_bancarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_gerenciamento_contas_bancarium_url(@gerenciamento_contas_bancarium)
    assert_response :success
  end

  test "should update gerenciamento_contas_bancarium" do
    patch gerenciamento_contas_bancarium_url(@gerenciamento_contas_bancarium), params: { gerenciamento_contas_bancarium: { agencia: @gerenciamento_contas_bancarium.agencia, banco: @gerenciamento_contas_bancarium.banco, conta: @gerenciamento_contas_bancarium.conta, data_abertura: @gerenciamento_contas_bancarium.data_abertura, saldo: @gerenciamento_contas_bancarium.saldo, tipo: @gerenciamento_contas_bancarium.tipo, titular: @gerenciamento_contas_bancarium.titular } }
    assert_redirected_to gerenciamento_contas_bancarium_url(@gerenciamento_contas_bancarium)
  end

  test "should destroy gerenciamento_contas_bancarium" do
    assert_difference("GerenciamentoContasBancarium.count", -1) do
      delete gerenciamento_contas_bancarium_url(@gerenciamento_contas_bancarium)
    end

    assert_redirected_to gerenciamento_contas_bancaria_url
  end
end
