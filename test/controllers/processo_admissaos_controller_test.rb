require "test_helper"

class ProcessoAdmissaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @processo_admissao = processo_admissaos(:one)
  end

  test "should get index" do
    get processo_admissaos_url
    assert_response :success
  end

  test "should get new" do
    get new_processo_admissao_url
    assert_response :success
  end

  test "should create processo_admissao" do
    assert_difference("ProcessoAdmissao.count") do
      post processo_admissaos_url, params: { processo_admissao: { cargo: @processo_admissao.cargo, data_admissao: @processo_admissao.data_admissao, data_entrega_documentos: @processo_admissao.data_entrega_documentos, departamento: @processo_admissao.departamento, funcionario: @processo_admissao.funcionario, salario: @processo_admissao.salario, status: @processo_admissao.status } }
    end

    assert_redirected_to processo_admissao_url(ProcessoAdmissao.last)
  end

  test "should show processo_admissao" do
    get processo_admissao_url(@processo_admissao)
    assert_response :success
  end

  test "should get edit" do
    get edit_processo_admissao_url(@processo_admissao)
    assert_response :success
  end

  test "should update processo_admissao" do
    patch processo_admissao_url(@processo_admissao), params: { processo_admissao: { cargo: @processo_admissao.cargo, data_admissao: @processo_admissao.data_admissao, data_entrega_documentos: @processo_admissao.data_entrega_documentos, departamento: @processo_admissao.departamento, funcionario: @processo_admissao.funcionario, salario: @processo_admissao.salario, status: @processo_admissao.status } }
    assert_redirected_to processo_admissao_url(@processo_admissao)
  end

  test "should destroy processo_admissao" do
    assert_difference("ProcessoAdmissao.count", -1) do
      delete processo_admissao_url(@processo_admissao)
    end

    assert_redirected_to processo_admissaos_url
  end
end
