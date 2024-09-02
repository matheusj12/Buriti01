require "application_system_test_case"

class GerenciamentoContasBancariaTest < ApplicationSystemTestCase
  setup do
    @gerenciamento_contas_bancarium = gerenciamento_contas_bancaria(:one)
  end

  test "visiting the index" do
    visit gerenciamento_contas_bancaria_url
    assert_selector "h1", text: "Gerenciamento contas bancaria"
  end

  test "should create gerenciamento contas bancarium" do
    visit gerenciamento_contas_bancaria_url
    click_on "New gerenciamento contas bancarium"

    fill_in "Agencia", with: @gerenciamento_contas_bancarium.agencia
    fill_in "Banco", with: @gerenciamento_contas_bancarium.banco
    fill_in "Conta", with: @gerenciamento_contas_bancarium.conta
    fill_in "Data abertura", with: @gerenciamento_contas_bancarium.data_abertura
    fill_in "Saldo", with: @gerenciamento_contas_bancarium.saldo
    fill_in "Tipo", with: @gerenciamento_contas_bancarium.tipo
    fill_in "Titular", with: @gerenciamento_contas_bancarium.titular
    click_on "Create Gerenciamento contas bancarium"

    assert_text "Gerenciamento contas bancarium was successfully created"
    click_on "Back"
  end

  test "should update Gerenciamento contas bancarium" do
    visit gerenciamento_contas_bancarium_url(@gerenciamento_contas_bancarium)
    click_on "Edit this gerenciamento contas bancarium", match: :first

    fill_in "Agencia", with: @gerenciamento_contas_bancarium.agencia
    fill_in "Banco", with: @gerenciamento_contas_bancarium.banco
    fill_in "Conta", with: @gerenciamento_contas_bancarium.conta
    fill_in "Data abertura", with: @gerenciamento_contas_bancarium.data_abertura
    fill_in "Saldo", with: @gerenciamento_contas_bancarium.saldo
    fill_in "Tipo", with: @gerenciamento_contas_bancarium.tipo
    fill_in "Titular", with: @gerenciamento_contas_bancarium.titular
    click_on "Update Gerenciamento contas bancarium"

    assert_text "Gerenciamento contas bancarium was successfully updated"
    click_on "Back"
  end

  test "should destroy Gerenciamento contas bancarium" do
    visit gerenciamento_contas_bancarium_url(@gerenciamento_contas_bancarium)
    click_on "Destroy this gerenciamento contas bancarium", match: :first

    assert_text "Gerenciamento contas bancarium was successfully destroyed"
  end
end
