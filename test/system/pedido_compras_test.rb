require "application_system_test_case"

class PedidoComprasTest < ApplicationSystemTestCase
  setup do
    @pedido_compra = pedido_compras(:one)
  end

  test "visiting the index" do
    visit pedido_compras_url
    assert_selector "h1", text: "Pedido compras"
  end

  test "should create pedido compra" do
    visit pedido_compras_url
    click_on "New pedido compra"

    fill_in "Data entrega", with: @pedido_compra.data_entrega
    fill_in "Data pedido", with: @pedido_compra.data_pedido
    fill_in "Descricao", with: @pedido_compra.descricao
    fill_in "Fornecedor", with: @pedido_compra.fornecedor
    fill_in "Status", with: @pedido_compra.status
    fill_in "Valor total", with: @pedido_compra.valor_total
    click_on "Create Pedido compra"

    assert_text "Pedido compra was successfully created"
    click_on "Back"
  end

  test "should update Pedido compra" do
    visit pedido_compra_url(@pedido_compra)
    click_on "Edit this pedido compra", match: :first

    fill_in "Data entrega", with: @pedido_compra.data_entrega
    fill_in "Data pedido", with: @pedido_compra.data_pedido
    fill_in "Descricao", with: @pedido_compra.descricao
    fill_in "Fornecedor", with: @pedido_compra.fornecedor
    fill_in "Status", with: @pedido_compra.status
    fill_in "Valor total", with: @pedido_compra.valor_total
    click_on "Update Pedido compra"

    assert_text "Pedido compra was successfully updated"
    click_on "Back"
  end

  test "should destroy Pedido compra" do
    visit pedido_compra_url(@pedido_compra)
    click_on "Destroy this pedido compra", match: :first

    assert_text "Pedido compra was successfully destroyed"
  end
end
