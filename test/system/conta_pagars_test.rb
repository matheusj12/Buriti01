require "application_system_test_case"

class ContaPagarsTest < ApplicationSystemTestCase
  setup do
    @conta_pagar = conta_pagars(:one)
  end

  test "visiting the index" do
    visit conta_pagars_url
    assert_selector "h1", text: "Conta pagars"
  end

  test "should create conta pagar" do
    visit conta_pagars_url
    click_on "New conta pagar"

    fill_in "Data pagamento", with: @conta_pagar.data_pagamento
    fill_in "Data vencimento", with: @conta_pagar.data_vencimento
    fill_in "Descricao", with: @conta_pagar.descricao
    fill_in "Fornecedor", with: @conta_pagar.fornecedor
    fill_in "Status", with: @conta_pagar.status
    fill_in "Valor", with: @conta_pagar.valor
    click_on "Create Conta pagar"

    assert_text "Conta pagar was successfully created"
    click_on "Back"
  end

  test "should update Conta pagar" do
    visit conta_pagar_url(@conta_pagar)
    click_on "Edit this conta pagar", match: :first

    fill_in "Data pagamento", with: @conta_pagar.data_pagamento
    fill_in "Data vencimento", with: @conta_pagar.data_vencimento
    fill_in "Descricao", with: @conta_pagar.descricao
    fill_in "Fornecedor", with: @conta_pagar.fornecedor
    fill_in "Status", with: @conta_pagar.status
    fill_in "Valor", with: @conta_pagar.valor
    click_on "Update Conta pagar"

    assert_text "Conta pagar was successfully updated"
    click_on "Back"
  end

  test "should destroy Conta pagar" do
    visit conta_pagar_url(@conta_pagar)
    click_on "Destroy this conta pagar", match: :first

    assert_text "Conta pagar was successfully destroyed"
  end
end
