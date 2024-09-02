require "application_system_test_case"

class CadastroAtivosTest < ApplicationSystemTestCase
  setup do
    @cadastro_ativo = cadastro_ativos(:one)
  end

  test "visiting the index" do
    visit cadastro_ativos_url
    assert_selector "h1", text: "Cadastro ativos"
  end

  test "should create cadastro ativo" do
    visit cadastro_ativos_url
    click_on "New cadastro ativo"

    fill_in "Data aquisicao", with: @cadastro_ativo.data_aquisicao
    fill_in "Descricao", with: @cadastro_ativo.descricao
    fill_in "Localizacao", with: @cadastro_ativo.localizacao
    fill_in "Nome", with: @cadastro_ativo.nome
    fill_in "Status", with: @cadastro_ativo.status
    fill_in "Valor", with: @cadastro_ativo.valor
    click_on "Create Cadastro ativo"

    assert_text "Cadastro ativo was successfully created"
    click_on "Back"
  end

  test "should update Cadastro ativo" do
    visit cadastro_ativo_url(@cadastro_ativo)
    click_on "Edit this cadastro ativo", match: :first

    fill_in "Data aquisicao", with: @cadastro_ativo.data_aquisicao
    fill_in "Descricao", with: @cadastro_ativo.descricao
    fill_in "Localizacao", with: @cadastro_ativo.localizacao
    fill_in "Nome", with: @cadastro_ativo.nome
    fill_in "Status", with: @cadastro_ativo.status
    fill_in "Valor", with: @cadastro_ativo.valor
    click_on "Update Cadastro ativo"

    assert_text "Cadastro ativo was successfully updated"
    click_on "Back"
  end

  test "should destroy Cadastro ativo" do
    visit cadastro_ativo_url(@cadastro_ativo)
    click_on "Destroy this cadastro ativo", match: :first

    assert_text "Cadastro ativo was successfully destroyed"
  end
end
