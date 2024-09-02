require "test_helper"

class PontoEletronicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ponto_eletronico = ponto_eletronicos(:one)
  end

  test "should get index" do
    get ponto_eletronicos_url
    assert_response :success
  end

  test "should get new" do
    get new_ponto_eletronico_url
    assert_response :success
  end

  test "should create ponto_eletronico" do
    assert_difference("PontoEletronico.count") do
      post ponto_eletronicos_url, params: { ponto_eletronico: { data: @ponto_eletronico.data, funcionario: @ponto_eletronico.funcionario, hora_entrada: @ponto_eletronico.hora_entrada, hora_saida: @ponto_eletronico.hora_saida, horas_trabalhadas: @ponto_eletronico.horas_trabalhadas } }
    end

    assert_redirected_to ponto_eletronico_url(PontoEletronico.last)
  end

  test "should show ponto_eletronico" do
    get ponto_eletronico_url(@ponto_eletronico)
    assert_response :success
  end

  test "should get edit" do
    get edit_ponto_eletronico_url(@ponto_eletronico)
    assert_response :success
  end

  test "should update ponto_eletronico" do
    patch ponto_eletronico_url(@ponto_eletronico), params: { ponto_eletronico: { data: @ponto_eletronico.data, funcionario: @ponto_eletronico.funcionario, hora_entrada: @ponto_eletronico.hora_entrada, hora_saida: @ponto_eletronico.hora_saida, horas_trabalhadas: @ponto_eletronico.horas_trabalhadas } }
    assert_redirected_to ponto_eletronico_url(@ponto_eletronico)
  end

  test "should destroy ponto_eletronico" do
    assert_difference("PontoEletronico.count", -1) do
      delete ponto_eletronico_url(@ponto_eletronico)
    end

    assert_redirected_to ponto_eletronicos_url
  end
end
