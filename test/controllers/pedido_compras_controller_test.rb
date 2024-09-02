require "test_helper"

class PedidoComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido_compra = pedido_compras(:one)
  end

  test "should get index" do
    get pedido_compras_url
    assert_response :success
  end

  test "should get new" do
    get new_pedido_compra_url
    assert_response :success
  end

  test "should create pedido_compra" do
    assert_difference("PedidoCompra.count") do
      post pedido_compras_url, params: { pedido_compra: { data_entrega: @pedido_compra.data_entrega, data_pedido: @pedido_compra.data_pedido, descricao: @pedido_compra.descricao, fornecedor: @pedido_compra.fornecedor, status: @pedido_compra.status, valor_total: @pedido_compra.valor_total } }
    end

    assert_redirected_to pedido_compra_url(PedidoCompra.last)
  end

  test "should show pedido_compra" do
    get pedido_compra_url(@pedido_compra)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_compra_url(@pedido_compra)
    assert_response :success
  end

  test "should update pedido_compra" do
    patch pedido_compra_url(@pedido_compra), params: { pedido_compra: { data_entrega: @pedido_compra.data_entrega, data_pedido: @pedido_compra.data_pedido, descricao: @pedido_compra.descricao, fornecedor: @pedido_compra.fornecedor, status: @pedido_compra.status, valor_total: @pedido_compra.valor_total } }
    assert_redirected_to pedido_compra_url(@pedido_compra)
  end

  test "should destroy pedido_compra" do
    assert_difference("PedidoCompra.count", -1) do
      delete pedido_compra_url(@pedido_compra)
    end

    assert_redirected_to pedido_compras_url
  end
end
