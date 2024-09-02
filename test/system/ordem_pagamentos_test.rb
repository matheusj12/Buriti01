require "application_system_test_case"

class OrdemPagamentosTest < ApplicationSystemTestCase
  setup do
    @ordem_pagamento = ordem_pagamentos(:one)
  end

  test "visiting the index" do
    visit ordem_pagamentos_url
    assert_selector "h1", text: "Ordem pagamentos"
  end

  test "should create ordem pagamento" do
    visit ordem_pagamentos_url
    click_on "New ordem pagamento"

    fill_in "Data emissao", with: @ordem_pagamento.data_emissao
    fill_in "Data pagamento", with: @ordem_pagamento.data_pagamento
    fill_in "Descricao", with: @ordem_pagamento.descricao
    fill_in "Fornecedor", with: @ordem_pagamento.fornecedor
    fill_in "Status", with: @ordem_pagamento.status
    fill_in "Valor", with: @ordem_pagamento.valor
    click_on "Create Ordem pagamento"

    assert_text "Ordem pagamento was successfully created"
    click_on "Back"
  end

  test "should update Ordem pagamento" do
    visit ordem_pagamento_url(@ordem_pagamento)
    click_on "Edit this ordem pagamento", match: :first

    fill_in "Data emissao", with: @ordem_pagamento.data_emissao
    fill_in "Data pagamento", with: @ordem_pagamento.data_pagamento
    fill_in "Descricao", with: @ordem_pagamento.descricao
    fill_in "Fornecedor", with: @ordem_pagamento.fornecedor
    fill_in "Status", with: @ordem_pagamento.status
    fill_in "Valor", with: @ordem_pagamento.valor
    click_on "Update Ordem pagamento"

    assert_text "Ordem pagamento was successfully updated"
    click_on "Back"
  end

  test "should destroy Ordem pagamento" do
    visit ordem_pagamento_url(@ordem_pagamento)
    click_on "Destroy this ordem pagamento", match: :first

    assert_text "Ordem pagamento was successfully destroyed"
  end
end
