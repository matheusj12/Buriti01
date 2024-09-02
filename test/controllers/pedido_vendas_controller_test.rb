require "test_helper"

class PedidoVendasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido_venda = pedido_vendas(:one)
  end

  test "should get index" do
    get pedido_vendas_url
    assert_response :success
  end

  test "should get new" do
    get new_pedido_venda_url
    assert_response :success
  end

  test "should create pedido_venda" do
    assert_difference("PedidoVenda.count") do
      post pedido_vendas_url, params: { pedido_venda: { cliente: @pedido_venda.cliente, data_entrega: @pedido_venda.data_entrega, data_pedido: @pedido_venda.data_pedido, descricao: @pedido_venda.descricao, status: @pedido_venda.status, valor_total: @pedido_venda.valor_total } }
    end

    assert_redirected_to pedido_venda_url(PedidoVenda.last)
  end

  test "should show pedido_venda" do
    get pedido_venda_url(@pedido_venda)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_venda_url(@pedido_venda)
    assert_response :success
  end

  test "should update pedido_venda" do
    patch pedido_venda_url(@pedido_venda), params: { pedido_venda: { cliente: @pedido_venda.cliente, data_entrega: @pedido_venda.data_entrega, data_pedido: @pedido_venda.data_pedido, descricao: @pedido_venda.descricao, status: @pedido_venda.status, valor_total: @pedido_venda.valor_total } }
    assert_redirected_to pedido_venda_url(@pedido_venda)
  end

  test "should destroy pedido_venda" do
    assert_difference("PedidoVenda.count", -1) do
      delete pedido_venda_url(@pedido_venda)
    end

    assert_redirected_to pedido_vendas_url
  end
end
