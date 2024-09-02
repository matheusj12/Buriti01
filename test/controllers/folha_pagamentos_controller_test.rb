require "test_helper"

class FolhaPagamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @folha_pagamento = folha_pagamentos(:one)
  end

  test "should get index" do
    get folha_pagamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_folha_pagamento_url
    assert_response :success
  end

  test "should create folha_pagamento" do
    assert_difference("FolhaPagamento.count") do
      post folha_pagamentos_url, params: { folha_pagamento: { bonus: @folha_pagamento.bonus, data_pagamento: @folha_pagamento.data_pagamento, descontos: @folha_pagamento.descontos, funcionario: @folha_pagamento.funcionario, salario: @folha_pagamento.salario, total_pago: @folha_pagamento.total_pago } }
    end

    assert_redirected_to folha_pagamento_url(FolhaPagamento.last)
  end

  test "should show folha_pagamento" do
    get folha_pagamento_url(@folha_pagamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_folha_pagamento_url(@folha_pagamento)
    assert_response :success
  end

  test "should update folha_pagamento" do
    patch folha_pagamento_url(@folha_pagamento), params: { folha_pagamento: { bonus: @folha_pagamento.bonus, data_pagamento: @folha_pagamento.data_pagamento, descontos: @folha_pagamento.descontos, funcionario: @folha_pagamento.funcionario, salario: @folha_pagamento.salario, total_pago: @folha_pagamento.total_pago } }
    assert_redirected_to folha_pagamento_url(@folha_pagamento)
  end

  test "should destroy folha_pagamento" do
    assert_difference("FolhaPagamento.count", -1) do
      delete folha_pagamento_url(@folha_pagamento)
    end

    assert_redirected_to folha_pagamentos_url
  end
end
