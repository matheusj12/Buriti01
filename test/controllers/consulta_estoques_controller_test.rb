require "test_helper"

class ConsultaEstoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consulta_estoque = consulta_estoques(:one)
  end

  test "should get index" do
    get consulta_estoques_url
    assert_response :success
  end

  test "should get new" do
    get new_consulta_estoque_url
    assert_response :success
  end

  test "should create consulta_estoque" do
    assert_difference("ConsultaEstoque.count") do
      post consulta_estoques_url, params: { consulta_estoque: { data_entrada: @consulta_estoque.data_entrada, data_saida: @consulta_estoque.data_saida, localizacao: @consulta_estoque.localizacao, produto: @consulta_estoque.produto, quantidade: @consulta_estoque.quantidade, valor_unitario: @consulta_estoque.valor_unitario } }
    end

    assert_redirected_to consulta_estoque_url(ConsultaEstoque.last)
  end

  test "should show consulta_estoque" do
    get consulta_estoque_url(@consulta_estoque)
    assert_response :success
  end

  test "should get edit" do
    get edit_consulta_estoque_url(@consulta_estoque)
    assert_response :success
  end

  test "should update consulta_estoque" do
    patch consulta_estoque_url(@consulta_estoque), params: { consulta_estoque: { data_entrada: @consulta_estoque.data_entrada, data_saida: @consulta_estoque.data_saida, localizacao: @consulta_estoque.localizacao, produto: @consulta_estoque.produto, quantidade: @consulta_estoque.quantidade, valor_unitario: @consulta_estoque.valor_unitario } }
    assert_redirected_to consulta_estoque_url(@consulta_estoque)
  end

  test "should destroy consulta_estoque" do
    assert_difference("ConsultaEstoque.count", -1) do
      delete consulta_estoque_url(@consulta_estoque)
    end

    assert_redirected_to consulta_estoques_url
  end
end
