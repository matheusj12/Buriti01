require "application_system_test_case"

class ContaRecebersTest < ApplicationSystemTestCase
  setup do
    @conta_receber = conta_recebers(:one)
  end

  test "visiting the index" do
    visit conta_recebers_url
    assert_selector "h1", text: "Conta recebers"
  end

  test "should create conta receber" do
    visit conta_recebers_url
    click_on "New conta receber"

    fill_in "Cliente", with: @conta_receber.cliente
    fill_in "Data recebimento", with: @conta_receber.data_recebimento
    fill_in "Data vencimento", with: @conta_receber.data_vencimento
    fill_in "Descricao", with: @conta_receber.descricao
    fill_in "Status", with: @conta_receber.status
    fill_in "Valor", with: @conta_receber.valor
    click_on "Create Conta receber"

    assert_text "Conta receber was successfully created"
    click_on "Back"
  end

  test "should update Conta receber" do
    visit conta_receber_url(@conta_receber)
    click_on "Edit this conta receber", match: :first

    fill_in "Cliente", with: @conta_receber.cliente
    fill_in "Data recebimento", with: @conta_receber.data_recebimento
    fill_in "Data vencimento", with: @conta_receber.data_vencimento
    fill_in "Descricao", with: @conta_receber.descricao
    fill_in "Status", with: @conta_receber.status
    fill_in "Valor", with: @conta_receber.valor
    click_on "Update Conta receber"

    assert_text "Conta receber was successfully updated"
    click_on "Back"
  end

  test "should destroy Conta receber" do
    visit conta_receber_url(@conta_receber)
    click_on "Destroy this conta receber", match: :first

    assert_text "Conta receber was successfully destroyed"
  end
end
