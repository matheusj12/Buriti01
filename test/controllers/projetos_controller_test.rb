require "test_helper"

class ProjetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projeto = projetos(:one)
  end

  test "should get index" do
    get projetos_url
    assert_response :success
  end

  test "should get new" do
    get new_projeto_url
    assert_response :success
  end

  test "should create projeto" do
    assert_difference("Projeto.count") do
      post projetos_url, params: { projeto: { data_fim: @projeto.data_fim, data_inicio: @projeto.data_inicio, descricao: @projeto.descricao, nome: @projeto.nome, prioridade: @projeto.prioridade, responsavel: @projeto.responsavel, status: @projeto.status } }
    end

    assert_redirected_to projeto_url(Projeto.last)
  end

  test "should show projeto" do
    get projeto_url(@projeto)
    assert_response :success
  end

  test "should get edit" do
    get edit_projeto_url(@projeto)
    assert_response :success
  end

  test "should update projeto" do
    patch projeto_url(@projeto), params: { projeto: { data_fim: @projeto.data_fim, data_inicio: @projeto.data_inicio, descricao: @projeto.descricao, nome: @projeto.nome, prioridade: @projeto.prioridade, responsavel: @projeto.responsavel, status: @projeto.status } }
    assert_redirected_to projeto_url(@projeto)
  end

  test "should destroy projeto" do
    assert_difference("Projeto.count", -1) do
      delete projeto_url(@projeto)
    end

    assert_redirected_to projetos_url
  end
end
