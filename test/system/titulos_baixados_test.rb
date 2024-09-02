require "application_system_test_case"

class TitulosBaixadosTest < ApplicationSystemTestCase
  setup do
    @titulos_baixado = titulos_baixados(:one)
  end

  test "visiting the index" do
    visit titulos_baixados_url
    assert_selector "h1", text: "Titulos baixados"
  end

  test "should create titulos baixado" do
    visit titulos_baixados_url
    click_on "New titulos baixado"

    fill_in "Cliente", with: @titulos_baixado.cliente
    fill_in "Data pagamento", with: @titulos_baixado.data_pagamento
    fill_in "Data vencimento", with: @titulos_baixado.data_vencimento
    fill_in "Descricao", with: @titulos_baixado.descricao
    fill_in "Valor", with: @titulos_baixado.valor
    click_on "Create Titulos baixado"

    assert_text "Titulos baixado was successfully created"
    click_on "Back"
  end

  test "should update Titulos baixado" do
    visit titulos_baixado_url(@titulos_baixado)
    click_on "Edit this titulos baixado", match: :first

    fill_in "Cliente", with: @titulos_baixado.cliente
    fill_in "Data pagamento", with: @titulos_baixado.data_pagamento
    fill_in "Data vencimento", with: @titulos_baixado.data_vencimento
    fill_in "Descricao", with: @titulos_baixado.descricao
    fill_in "Valor", with: @titulos_baixado.valor
    click_on "Update Titulos baixado"

    assert_text "Titulos baixado was successfully updated"
    click_on "Back"
  end

  test "should destroy Titulos baixado" do
    visit titulos_baixado_url(@titulos_baixado)
    click_on "Destroy this titulos baixado", match: :first

    assert_text "Titulos baixado was successfully destroyed"
  end
end
