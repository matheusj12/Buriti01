require "application_system_test_case"

class ProcessoAdmissaosTest < ApplicationSystemTestCase
  setup do
    @processo_admissao = processo_admissaos(:one)
  end

  test "visiting the index" do
    visit processo_admissaos_url
    assert_selector "h1", text: "Processo admissaos"
  end

  test "should create processo admissao" do
    visit processo_admissaos_url
    click_on "New processo admissao"

    fill_in "Cargo", with: @processo_admissao.cargo
    fill_in "Data admissao", with: @processo_admissao.data_admissao
    fill_in "Data entrega documentos", with: @processo_admissao.data_entrega_documentos
    fill_in "Departamento", with: @processo_admissao.departamento
    fill_in "Funcionario", with: @processo_admissao.funcionario
    fill_in "Salario", with: @processo_admissao.salario
    fill_in "Status", with: @processo_admissao.status
    click_on "Create Processo admissao"

    assert_text "Processo admissao was successfully created"
    click_on "Back"
  end

  test "should update Processo admissao" do
    visit processo_admissao_url(@processo_admissao)
    click_on "Edit this processo admissao", match: :first

    fill_in "Cargo", with: @processo_admissao.cargo
    fill_in "Data admissao", with: @processo_admissao.data_admissao
    fill_in "Data entrega documentos", with: @processo_admissao.data_entrega_documentos
    fill_in "Departamento", with: @processo_admissao.departamento
    fill_in "Funcionario", with: @processo_admissao.funcionario
    fill_in "Salario", with: @processo_admissao.salario
    fill_in "Status", with: @processo_admissao.status
    click_on "Update Processo admissao"

    assert_text "Processo admissao was successfully updated"
    click_on "Back"
  end

  test "should destroy Processo admissao" do
    visit processo_admissao_url(@processo_admissao)
    click_on "Destroy this processo admissao", match: :first

    assert_text "Processo admissao was successfully destroyed"
  end
end
