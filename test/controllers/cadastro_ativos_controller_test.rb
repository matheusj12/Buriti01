require "test_helper"

class CadastroAtivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro_ativo = cadastro_ativos(:one)
  end

  test "should get index" do
    get cadastro_ativos_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_ativo_url
    assert_response :success
  end

  test "should create cadastro_ativo" do
    assert_difference("CadastroAtivo.count") do
      post cadastro_ativos_url, params: { cadastro_ativo: { data_aquisicao: @cadastro_ativo.data_aquisicao, descricao: @cadastro_ativo.descricao, localizacao: @cadastro_ativo.localizacao, nome: @cadastro_ativo.nome, status: @cadastro_ativo.status, valor: @cadastro_ativo.valor } }
    end

    assert_redirected_to cadastro_ativo_url(CadastroAtivo.last)
  end

  test "should show cadastro_ativo" do
    get cadastro_ativo_url(@cadastro_ativo)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_ativo_url(@cadastro_ativo)
    assert_response :success
  end

  test "should update cadastro_ativo" do
    patch cadastro_ativo_url(@cadastro_ativo), params: { cadastro_ativo: { data_aquisicao: @cadastro_ativo.data_aquisicao, descricao: @cadastro_ativo.descricao, localizacao: @cadastro_ativo.localizacao, nome: @cadastro_ativo.nome, status: @cadastro_ativo.status, valor: @cadastro_ativo.valor } }
    assert_redirected_to cadastro_ativo_url(@cadastro_ativo)
  end

  test "should destroy cadastro_ativo" do
    assert_difference("CadastroAtivo.count", -1) do
      delete cadastro_ativo_url(@cadastro_ativo)
    end

    assert_redirected_to cadastro_ativos_url
  end
end
