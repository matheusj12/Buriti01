require "application_system_test_case"

class ComprasTest < ApplicationSystemTestCase
  setup do
    @compra = compras(:one)
  end

  test "visiting the index" do
    visit compras_url
    assert_selector "h1", text: "Compras"
  end

  test "should create compra" do
    visit compras_url
    click_on "New compra"

    fill_in "Data compra", with: @compra.data_compra
    fill_in "Fornecedor", with: @compra.fornecedor
    fill_in "Metodo pagamento", with: @compra.metodo_pagamento
    fill_in "Observacoes", with: @compra.observacoes
    fill_in "Produto", with: @compra.produto
    fill_in "Quantidade", with: @compra.quantidade
    fill_in "Status", with: @compra.status
    fill_in "Valor total", with: @compra.valor_total
    click_on "Create Compra"

    assert_text "Compra was successfully created"
    click_on "Back"
  end

  test "should update Compra" do
    visit compra_url(@compra)
    click_on "Edit this compra", match: :first

    fill_in "Data compra", with: @compra.data_compra
    fill_in "Fornecedor", with: @compra.fornecedor
    fill_in "Metodo pagamento", with: @compra.metodo_pagamento
    fill_in "Observacoes", with: @compra.observacoes
    fill_in "Produto", with: @compra.produto
    fill_in "Quantidade", with: @compra.quantidade
    fill_in "Status", with: @compra.status
    fill_in "Valor total", with: @compra.valor_total
    click_on "Update Compra"

    assert_text "Compra was successfully updated"
    click_on "Back"
  end

  test "should destroy Compra" do
    visit compra_url(@compra)
    click_on "Destroy this compra", match: :first

    assert_text "Compra was successfully destroyed"
  end
end
