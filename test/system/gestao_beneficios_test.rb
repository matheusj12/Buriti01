require "application_system_test_case"

class GestaoBeneficiosTest < ApplicationSystemTestCase
  setup do
    @gestao_beneficio = gestao_beneficios(:one)
  end

  test "visiting the index" do
    visit gestao_beneficios_url
    assert_selector "h1", text: "Gestao beneficios"
  end

  test "should create gestao beneficio" do
    visit gestao_beneficios_url
    click_on "New gestao beneficio"

    check "Ativo" if @gestao_beneficio.ativo
    fill_in "Data fim", with: @gestao_beneficio.data_fim
    fill_in "Data inicio", with: @gestao_beneficio.data_inicio
    fill_in "Descricao", with: @gestao_beneficio.descricao
    fill_in "Nome", with: @gestao_beneficio.nome
    fill_in "Valor", with: @gestao_beneficio.valor
    click_on "Create Gestao beneficio"

    assert_text "Gestao beneficio was successfully created"
    click_on "Back"
  end

  test "should update Gestao beneficio" do
    visit gestao_beneficio_url(@gestao_beneficio)
    click_on "Edit this gestao beneficio", match: :first

    check "Ativo" if @gestao_beneficio.ativo
    fill_in "Data fim", with: @gestao_beneficio.data_fim
    fill_in "Data inicio", with: @gestao_beneficio.data_inicio
    fill_in "Descricao", with: @gestao_beneficio.descricao
    fill_in "Nome", with: @gestao_beneficio.nome
    fill_in "Valor", with: @gestao_beneficio.valor
    click_on "Update Gestao beneficio"

    assert_text "Gestao beneficio was successfully updated"
    click_on "Back"
  end

  test "should destroy Gestao beneficio" do
    visit gestao_beneficio_url(@gestao_beneficio)
    click_on "Destroy this gestao beneficio", match: :first

    assert_text "Gestao beneficio was successfully destroyed"
  end
end
