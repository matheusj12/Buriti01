require "application_system_test_case"

class PedidoVendasTest < ApplicationSystemTestCase
  setup do
    @pedido_venda = pedido_vendas(:one)
  end

  test "visiting the index" do
    visit pedido_vendas_url
    assert_selector "h1", text: "Pedido vendas"
  end

  test "should create pedido venda" do
    visit pedido_vendas_url
    click_on "New pedido venda"

    fill_in "Cliente", with: @pedido_venda.cliente
    fill_in "Data entrega", with: @pedido_venda.data_entrega
    fill_in "Data pedido", with: @pedido_venda.data_pedido
    fill_in "Descricao", with: @pedido_venda.descricao
    fill_in "Status", with: @pedido_venda.status
    fill_in "Valor total", with: @pedido_venda.valor_total
    click_on "Create Pedido venda"

    assert_text "Pedido venda was successfully created"
    click_on "Back"
  end

  test "should update Pedido venda" do
    visit pedido_venda_url(@pedido_venda)
    click_on "Edit this pedido venda", match: :first

    fill_in "Cliente", with: @pedido_venda.cliente
    fill_in "Data entrega", with: @pedido_venda.data_entrega
    fill_in "Data pedido", with: @pedido_venda.data_pedido
    fill_in "Descricao", with: @pedido_venda.descricao
    fill_in "Status", with: @pedido_venda.status
    fill_in "Valor total", with: @pedido_venda.valor_total
    click_on "Update Pedido venda"

    assert_text "Pedido venda was successfully updated"
    click_on "Back"
  end

  test "should destroy Pedido venda" do
    visit pedido_venda_url(@pedido_venda)
    click_on "Destroy this pedido venda", match: :first

    assert_text "Pedido venda was successfully destroyed"
  end
end
