require "test_helper"

class AutomacaoTarefasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automacao_tarefa = automacao_tarefas(:one)
  end

  test "should get index" do
    get automacao_tarefas_url
    assert_response :success
  end

  test "should get new" do
    get new_automacao_tarefa_url
    assert_response :success
  end

  test "should create automacao_tarefa" do
    assert_difference("AutomacaoTarefa.count") do
      post automacao_tarefas_url, params: { automacao_tarefa: { ativo: @automacao_tarefa.ativo, descricao: @automacao_tarefa.descricao, frequencia: @automacao_tarefa.frequencia, horario: @automacao_tarefa.horario, nome: @automacao_tarefa.nome } }
    end

    assert_redirected_to automacao_tarefa_url(AutomacaoTarefa.last)
  end

  test "should show automacao_tarefa" do
    get automacao_tarefa_url(@automacao_tarefa)
    assert_response :success
  end

  test "should get edit" do
    get edit_automacao_tarefa_url(@automacao_tarefa)
    assert_response :success
  end

  test "should update automacao_tarefa" do
    patch automacao_tarefa_url(@automacao_tarefa), params: { automacao_tarefa: { ativo: @automacao_tarefa.ativo, descricao: @automacao_tarefa.descricao, frequencia: @automacao_tarefa.frequencia, horario: @automacao_tarefa.horario, nome: @automacao_tarefa.nome } }
    assert_redirected_to automacao_tarefa_url(@automacao_tarefa)
  end

  test "should destroy automacao_tarefa" do
    assert_difference("AutomacaoTarefa.count", -1) do
      delete automacao_tarefa_url(@automacao_tarefa)
    end

    assert_redirected_to automacao_tarefas_url
  end
end
