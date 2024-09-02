require "application_system_test_case"

class RelatoriosTest < ApplicationSystemTestCase
  setup do
    @relatorio = relatorios(:one)
  end

  test "visiting the index" do
    visit relatorios_url
    assert_selector "h1", text: "Relatorios"
  end

  test "should create relatorio" do
    visit relatorios_url
    click_on "New relatorio"

    fill_in "Conteudo", with: @relatorio.conteudo
    fill_in "Data geracao", with: @relatorio.data_geracao
    fill_in "Descricao", with: @relatorio.descricao
    fill_in "Nome", with: @relatorio.nome
    fill_in "Tipo", with: @relatorio.tipo
    click_on "Create Relatorio"

    assert_text "Relatorio was successfully created"
    click_on "Back"
  end

  test "should update Relatorio" do
    visit relatorio_url(@relatorio)
    click_on "Edit this relatorio", match: :first

    fill_in "Conteudo", with: @relatorio.conteudo
    fill_in "Data geracao", with: @relatorio.data_geracao
    fill_in "Descricao", with: @relatorio.descricao
    fill_in "Nome", with: @relatorio.nome
    fill_in "Tipo", with: @relatorio.tipo
    click_on "Update Relatorio"

    assert_text "Relatorio was successfully updated"
    click_on "Back"
  end

  test "should destroy Relatorio" do
    visit relatorio_url(@relatorio)
    click_on "Destroy this relatorio", match: :first

    assert_text "Relatorio was successfully destroyed"
  end
end
