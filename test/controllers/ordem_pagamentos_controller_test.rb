require "test_helper"

class OrdemPagamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordem_pagamento = ordem_pagamentos(:one)
  end

  test "should get index" do
    get ordem_pagamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_ordem_pagamento_url
    assert_response :success
  end

  test "should create ordem_pagamento" do
    assert_difference("OrdemPagamento.count") do
      post ordem_pagamentos_url, params: { ordem_pagamento: { data_emissao: @ordem_pagamento.data_emissao, data_pagamento: @ordem_pagamento.data_pagamento, descricao: @ordem_pagamento.descricao, fornecedor: @ordem_pagamento.fornecedor, status: @ordem_pagamento.status, valor: @ordem_pagamento.valor } }
    end

    assert_redirected_to ordem_pagamento_url(OrdemPagamento.last)
  end

  test "should show ordem_pagamento" do
    get ordem_pagamento_url(@ordem_pagamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordem_pagamento_url(@ordem_pagamento)
    assert_response :success
  end

  test "should update ordem_pagamento" do
    patch ordem_pagamento_url(@ordem_pagamento), params: { ordem_pagamento: { data_emissao: @ordem_pagamento.data_emissao, data_pagamento: @ordem_pagamento.data_pagamento, descricao: @ordem_pagamento.descricao, fornecedor: @ordem_pagamento.fornecedor, status: @ordem_pagamento.status, valor: @ordem_pagamento.valor } }
    assert_redirected_to ordem_pagamento_url(@ordem_pagamento)
  end

  test "should destroy ordem_pagamento" do
    assert_difference("OrdemPagamento.count", -1) do
      delete ordem_pagamento_url(@ordem_pagamento)
    end

    assert_redirected_to ordem_pagamentos_url
  end
end
