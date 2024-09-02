require "application_system_test_case"

class AutomacaoTarefasTest < ApplicationSystemTestCase
  setup do
    @automacao_tarefa = automacao_tarefas(:one)
  end

  test "visiting the index" do
    visit automacao_tarefas_url
    assert_selector "h1", text: "Automacao tarefas"
  end

  test "should create automacao tarefa" do
    visit automacao_tarefas_url
    click_on "New automacao tarefa"

    check "Ativo" if @automacao_tarefa.ativo
    fill_in "Descricao", with: @automacao_tarefa.descricao
    fill_in "Frequencia", with: @automacao_tarefa.frequencia
    fill_in "Horario", with: @automacao_tarefa.horario
    fill_in "Nome", with: @automacao_tarefa.nome
    click_on "Create Automacao tarefa"

    assert_text "Automacao tarefa was successfully created"
    click_on "Back"
  end

  test "should update Automacao tarefa" do
    visit automacao_tarefa_url(@automacao_tarefa)
    click_on "Edit this automacao tarefa", match: :first

    check "Ativo" if @automacao_tarefa.ativo
    fill_in "Descricao", with: @automacao_tarefa.descricao
    fill_in "Frequencia", with: @automacao_tarefa.frequencia
    fill_in "Horario", with: @automacao_tarefa.horario.to_s
    fill_in "Nome", with: @automacao_tarefa.nome
    click_on "Update Automacao tarefa"

    assert_text "Automacao tarefa was successfully updated"
    click_on "Back"
  end

  test "should destroy Automacao tarefa" do
    visit automacao_tarefa_url(@automacao_tarefa)
    click_on "Destroy this automacao tarefa", match: :first

    assert_text "Automacao tarefa was successfully destroyed"
  end
end
