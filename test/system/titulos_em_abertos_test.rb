require "application_system_test_case"

class TitulosEmAbertosTest < ApplicationSystemTestCase
  setup do
    @titulos_em_aberto = titulos_em_abertos(:one)
  end

  test "visiting the index" do
    visit titulos_em_abertos_url
    assert_selector "h1", text: "Titulos em abertos"
  end

  test "should create titulos em aberto" do
    visit titulos_em_abertos_url
    click_on "New titulos em aberto"

    fill_in "Cliente", with: @titulos_em_aberto.cliente
    fill_in "Data vencimento", with: @titulos_em_aberto.data_vencimento
    fill_in "Descricao", with: @titulos_em_aberto.descricao
    fill_in "Status", with: @titulos_em_aberto.status
    fill_in "Valor", with: @titulos_em_aberto.valor
    click_on "Create Titulos em aberto"

    assert_text "Titulos em aberto was successfully created"
    click_on "Back"
  end

  test "should update Titulos em aberto" do
    visit titulos_em_aberto_url(@titulos_em_aberto)
    click_on "Edit this titulos em aberto", match: :first

    fill_in "Cliente", with: @titulos_em_aberto.cliente
    fill_in "Data vencimento", with: @titulos_em_aberto.data_vencimento
    fill_in "Descricao", with: @titulos_em_aberto.descricao
    fill_in "Status", with: @titulos_em_aberto.status
    fill_in "Valor", with: @titulos_em_aberto.valor
    click_on "Update Titulos em aberto"

    assert_text "Titulos em aberto was successfully updated"
    click_on "Back"
  end

  test "should destroy Titulos em aberto" do
    visit titulos_em_aberto_url(@titulos_em_aberto)
    click_on "Destroy this titulos em aberto", match: :first

    assert_text "Titulos em aberto was successfully destroyed"
  end
end
