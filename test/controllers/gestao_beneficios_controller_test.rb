require "test_helper"

class GestaoBeneficiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gestao_beneficio = gestao_beneficios(:one)
  end

  test "should get index" do
    get gestao_beneficios_url
    assert_response :success
  end

  test "should get new" do
    get new_gestao_beneficio_url
    assert_response :success
  end

  test "should create gestao_beneficio" do
    assert_difference("GestaoBeneficio.count") do
      post gestao_beneficios_url, params: { gestao_beneficio: { ativo: @gestao_beneficio.ativo, data_fim: @gestao_beneficio.data_fim, data_inicio: @gestao_beneficio.data_inicio, descricao: @gestao_beneficio.descricao, nome: @gestao_beneficio.nome, valor: @gestao_beneficio.valor } }
    end

    assert_redirected_to gestao_beneficio_url(GestaoBeneficio.last)
  end

  test "should show gestao_beneficio" do
    get gestao_beneficio_url(@gestao_beneficio)
    assert_response :success
  end

  test "should get edit" do
    get edit_gestao_beneficio_url(@gestao_beneficio)
    assert_response :success
  end

  test "should update gestao_beneficio" do
    patch gestao_beneficio_url(@gestao_beneficio), params: { gestao_beneficio: { ativo: @gestao_beneficio.ativo, data_fim: @gestao_beneficio.data_fim, data_inicio: @gestao_beneficio.data_inicio, descricao: @gestao_beneficio.descricao, nome: @gestao_beneficio.nome, valor: @gestao_beneficio.valor } }
    assert_redirected_to gestao_beneficio_url(@gestao_beneficio)
  end

  test "should destroy gestao_beneficio" do
    assert_difference("GestaoBeneficio.count", -1) do
      delete gestao_beneficio_url(@gestao_beneficio)
    end

    assert_redirected_to gestao_beneficios_url
  end
end
