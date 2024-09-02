require "application_system_test_case"

class FolhaPagamentosTest < ApplicationSystemTestCase
  setup do
    @folha_pagamento = folha_pagamentos(:one)
  end

  test "visiting the index" do
    visit folha_pagamentos_url
    assert_selector "h1", text: "Folha pagamentos"
  end

  test "should create folha pagamento" do
    visit folha_pagamentos_url
    click_on "New folha pagamento"

    fill_in "Bonus", with: @folha_pagamento.bonus
    fill_in "Data pagamento", with: @folha_pagamento.data_pagamento
    fill_in "Descontos", with: @folha_pagamento.descontos
    fill_in "Funcionario", with: @folha_pagamento.funcionario
    fill_in "Salario", with: @folha_pagamento.salario
    fill_in "Total pago", with: @folha_pagamento.total_pago
    click_on "Create Folha pagamento"

    assert_text "Folha pagamento was successfully created"
    click_on "Back"
  end

  test "should update Folha pagamento" do
    visit folha_pagamento_url(@folha_pagamento)
    click_on "Edit this folha pagamento", match: :first

    fill_in "Bonus", with: @folha_pagamento.bonus
    fill_in "Data pagamento", with: @folha_pagamento.data_pagamento
    fill_in "Descontos", with: @folha_pagamento.descontos
    fill_in "Funcionario", with: @folha_pagamento.funcionario
    fill_in "Salario", with: @folha_pagamento.salario
    fill_in "Total pago", with: @folha_pagamento.total_pago
    click_on "Update Folha pagamento"

    assert_text "Folha pagamento was successfully updated"
    click_on "Back"
  end

  test "should destroy Folha pagamento" do
    visit folha_pagamento_url(@folha_pagamento)
    click_on "Destroy this folha pagamento", match: :first

    assert_text "Folha pagamento was successfully destroyed"
  end
end
